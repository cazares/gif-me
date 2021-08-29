//
//  AddTextToVideoHelper.swift
//  GifMe
//
//  Created by Miguel Cazares on 8/29/21.
//  Copyright © 2021 Sebastian Dobrincu. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import Photos

class AddTextToVideoHelper: NSObject {
    @objc static public func addTextToVideoUrl(_ url: URL, onComplete: @escaping SSNGenericBlock) {
        let composition = AVMutableComposition()
        let vidAsset = AVURLAsset(url: url, options: nil)

        // get video track
        let vtrack =  vidAsset.tracks(withMediaType: AVMediaType.video)
        let videoTrack:AVAssetTrack = vtrack[0]
        let vid_timerange = CMTimeRangeMake(start: CMTime.zero, duration: vidAsset.duration)
        let vid_duration = videoTrack.timeRange.duration

        let compositionvideoTrack:AVMutableCompositionTrack = composition.addMutableTrack(withMediaType: AVMediaType.video, preferredTrackID: CMPersistentTrackID())!
        do {
            try compositionvideoTrack.insertTimeRange(vid_timerange, of: videoTrack, at: CMTime.zero)
        }
        catch {
            print("insert time range error \(error)")
            return
        }
        
        compositionvideoTrack.preferredTransform = videoTrack.preferredTransform

        // Watermark Effect
        let size = videoTrack.naturalSize

        let imglogo = UIImage(named: "image.png")
        let imglayer = CALayer()
        imglayer.contents = imglogo?.cgImage
        imglayer.frame = CGRect(x: 5, y: 5, width: 100, height: 100)
        imglayer.opacity = 0.6

        // create text Layer
        let titleLayer = CATextLayer()
        titleLayer.backgroundColor = UIColor.black.cgColor
        titleLayer.string = "Dummy text"
        titleLayer.font = UIFont(name: "Helvetica", size: 28)
        titleLayer.shadowOpacity = 0.5
        titleLayer.alignmentMode = CATextLayerAlignmentMode.center
        titleLayer.frame = CGRect(x: 0, y: 50, width: size.width, height: size.height / 6)

        let videolayer = CALayer()
        videolayer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)

        let parentlayer = CALayer()
        parentlayer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        parentlayer.addSublayer(videolayer)
        parentlayer.addSublayer(imglayer)
        parentlayer.addSublayer(titleLayer)

        let layercomposition = AVMutableVideoComposition()
        layercomposition.frameDuration = CMTimeMake(value: 1, timescale: 30)
        layercomposition.renderSize = size
        layercomposition.animationTool = AVVideoCompositionCoreAnimationTool(postProcessingAsVideoLayer: videolayer, in: parentlayer)

        // instruction for watermark
        let instruction = AVMutableVideoCompositionInstruction()
        instruction.timeRange = CMTimeRangeMake(start: CMTime.zero, duration: composition.duration)
        let videotrack = composition.tracks(withMediaType: AVMediaType.video)[0] as AVAssetTrack
        let layerinstruction = AVMutableVideoCompositionLayerInstruction(assetTrack: videotrack)
        instruction.layerInstructions = [layerinstruction]
        layercomposition.instructions = [instruction]

        //  create new file to receive data
        let documentsPathURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let movieDestinationUrl = URL(string: documentsPathURL!.absoluteString)?.appendingPathComponent("result.mov")

        // use AVAssetExportSession to export video
        let assetExport = AVAssetExportSession(asset: composition, presetName:AVAssetExportPresetHighestQuality)
        assetExport?.outputFileType = AVFileType.mov
        assetExport?.outputURL = movieDestinationUrl
        assetExport?.videoComposition = layercomposition
        assetExport?.exportAsynchronously(completionHandler: {
            // play video
            OperationQueue.main.addOperation({ () -> Void in
//                self.playVideo(movieDestinationUrl!)
                onComplete(movieDestinationUrl)
            })
        })
    }
}
