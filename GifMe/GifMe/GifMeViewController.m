//
//  ViewController.m
//  GifMe
//
//  Created by Miguel Cazares on 30/08/15. (My birthday 🎉)
//  Copyright (c) 2015 Miguel Cazares. All rights reserved.
//

@import WebKit;

#import "GifMeViewController.h"
#import <Photos/Photos.h>
#import "NSGIF.h"
#import <LHSCategoryCollection/UIView+LHSAdditions.h>
#import "SSNConstants.h"
#import "SSNFlatButton.h"
#import <SVProgressHUD/SVProgressHUD.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "GifMe-Swift.h"

@interface GifMeViewController ()

@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic) BOOL didPickVideo;
@property (nonatomic, strong) SSNFlatButton *retakeVideoButton;
@property (nonatomic) BOOL loading;
@property (nonatomic, strong) AVAsset *videoAsset;

@end

@implementation GifMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithRed:0.13 green:0.16 blue:0.19 alpha:1];
    
    self.webView = [[WKWebView alloc] init];
    self.webView.translatesAutoresizingMaskIntoConstraints = NO;
    self.webView.backgroundColor = [UIColor colorWithRed:0.13 green:0.16 blue:0.19 alpha:1];
    self.webView.scrollView.backgroundColor = self.webView.backgroundColor;
    self.webView.opaque = NO;
    
    [self.view addSubview:self.webView];
    
    self.retakeVideoButton = [[SSNFlatButton alloc] initButtonWithView:self.view title:@"Retake Gif" handler:^{
        [self showPicker];
    } activeColor:[SSNConstants submitFeedbackColor] pressedColor:[SSNConstants submitFeedbackColorPressed] fontSize:20.0f];
    
    NSDictionary *views = @{ @"retake": self.retakeVideoButton, @"webView": self.webView };
    [self.view lhs_addConstraints:@"V:|-(50)-[webView][retake(68)]-|" views:views];
    [self.retakeVideoButton lhs_fillWidthOfSuperview];
    [self.webView lhs_fillWidthOfSuperview];
    
    self.didPickVideo = NO;
    self.loading = YES;
}

- (void)setLoading:(BOOL)loading {
    _loading = loading;
    if (loading) {
        [SVProgressHUD show];
    }
    else {
        [SVProgressHUD dismiss];
    }
    self.webView.hidden = loading;
    self.retakeVideoButton.hidden = loading;
}

- (void)showPicker {
    #if TARGET_IPHONE_SIMULATOR
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oops!" message:@"You can't use the camera demo in the simulator. Try the video demo." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        return;
    #endif

    dispatch_async(dispatch_get_main_queue(), ^{
        
        UIImagePickerController *picker = [[UIImagePickerController alloc]init];
        picker.videoQuality = UIImagePickerControllerQualityTypeMedium;
        picker.delegate = self;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        picker.mediaTypes = @[(NSString *)kUTTypeMovie];
        picker.cameraDevice = UIImagePickerControllerCameraDeviceFront;
        
        // Present the picker
        self.loading = YES;
        [self presentViewController:picker animated:YES completion:^{
            self.loading = NO;
        }];
    });
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    if (self.didPickVideo) {
        return;
    }
    
    [self showPicker];
}

- (void)addTextToVideoAssetWithCompletionHandler:(SSNGenericBlock)completionHandler
{
  // 1 - Early exit if there's no video file selected
  if (!self.videoAsset) {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Please Load a Video Asset First"
                                                   delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    return;
  }

  // 2 - Create AVMutableComposition object. This object will hold your AVMutableCompositionTrack instances.
  AVMutableComposition *mixComposition = [[AVMutableComposition alloc] init];

  // 3 - Video track
  AVMutableCompositionTrack *videoTrack = [mixComposition addMutableTrackWithMediaType:AVMediaTypeVideo
                                                                      preferredTrackID:kCMPersistentTrackID_Invalid];
  [videoTrack insertTimeRange:CMTimeRangeMake(kCMTimeZero, self.videoAsset.duration)
                      ofTrack:[[self.videoAsset tracksWithMediaType:AVMediaTypeVideo] objectAtIndex:0]
                       atTime:kCMTimeZero error:nil];

  // 3.1 - Create AVMutableVideoCompositionInstruction
  AVMutableVideoCompositionInstruction *mainInstruction = [AVMutableVideoCompositionInstruction videoCompositionInstruction];
  mainInstruction.timeRange = CMTimeRangeMake(kCMTimeZero, self.videoAsset.duration);

  // 3.2 - Create an AVMutableVideoCompositionLayerInstruction for the video track and fix the orientation.
  AVMutableVideoCompositionLayerInstruction *videolayerInstruction = [AVMutableVideoCompositionLayerInstruction videoCompositionLayerInstructionWithAssetTrack:videoTrack];
  AVAssetTrack *videoAssetTrack = [[self.videoAsset tracksWithMediaType:AVMediaTypeVideo] objectAtIndex:0];
  UIImageOrientation videoAssetOrientation_  = UIImageOrientationUp;
  BOOL isVideoAssetPortrait_  = NO;
  CGAffineTransform videoTransform = videoAssetTrack.preferredTransform;
  if (videoTransform.a == 0 && videoTransform.b == 1.0 && videoTransform.c == -1.0 && videoTransform.d == 0) {
    videoAssetOrientation_ = UIImageOrientationRight;
    isVideoAssetPortrait_ = YES;
  }
  if (videoTransform.a == 0 && videoTransform.b == -1.0 && videoTransform.c == 1.0 && videoTransform.d == 0) {
    videoAssetOrientation_ =  UIImageOrientationLeft;
    isVideoAssetPortrait_ = YES;
  }
  if (videoTransform.a == 1.0 && videoTransform.b == 0 && videoTransform.c == 0 && videoTransform.d == 1.0) {
    videoAssetOrientation_ =  UIImageOrientationUp;
  }
  if (videoTransform.a == -1.0 && videoTransform.b == 0 && videoTransform.c == 0 && videoTransform.d == -1.0) {
    videoAssetOrientation_ = UIImageOrientationDown;
  }
  [videolayerInstruction setTransform:videoAssetTrack.preferredTransform atTime:kCMTimeZero];
  [videolayerInstruction setOpacity:0.0 atTime:self.videoAsset.duration];

  // 3.3 - Add instructions
  mainInstruction.layerInstructions = [NSArray arrayWithObjects:videolayerInstruction,nil];

  AVMutableVideoComposition *mainCompositionInst = [AVMutableVideoComposition videoComposition];

  CGSize naturalSize;
  if(isVideoAssetPortrait_){
    naturalSize = CGSizeMake(videoAssetTrack.naturalSize.height, videoAssetTrack.naturalSize.width);
  } else {
    naturalSize = videoAssetTrack.naturalSize;
  }

  float renderWidth, renderHeight;
  renderWidth = naturalSize.width;
  renderHeight = naturalSize.height;
  mainCompositionInst.renderSize = CGSizeMake(renderWidth, renderHeight);
  mainCompositionInst.instructions = [NSArray arrayWithObject:mainInstruction];
  mainCompositionInst.frameDuration = CMTimeMake(1, 30);

  [self applyVideoEffectsToComposition:mainCompositionInst size:naturalSize];
  
  // 4 - Get path
  NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
  NSString *documentsDirectory = [paths objectAtIndex:0];
  NSString *myPathDocs =  [documentsDirectory stringByAppendingPathComponent:
                           [NSString stringWithFormat:@"FinalVideo-%d.mov",arc4random() % 1000]];
  NSURL *url = [NSURL fileURLWithPath:myPathDocs];

  // 5 - Create exporter
  AVAssetExportSession *exporter = [[AVAssetExportSession alloc] initWithAsset:mixComposition
                                                                    presetName:AVAssetExportPresetHighestQuality];
  exporter.outputURL=url;
  exporter.outputFileType = AVFileTypeQuickTimeMovie;
  exporter.shouldOptimizeForNetworkUse = YES;
  exporter.videoComposition = mainCompositionInst;
  [exporter exportAsynchronouslyWithCompletionHandler:^{
    dispatch_async(dispatch_get_main_queue(), ^{
//      [self exportDidFinish:exporter];
        completionHandler(url);
    });
  }];
}

- (void)applyVideoEffectsToComposition:(AVMutableVideoComposition *)composition size:(CGSize)size
{
    // 1 - Set up the text layer
        CATextLayer *subtitle1Text = [[CATextLayer alloc] init];
        [subtitle1Text setFont:@"Helvetica-Bold"];
        [subtitle1Text setFontSize:15];
        [subtitle1Text setFrame:CGRectMake(0, 0, size.width, 100)];
        [subtitle1Text setString:@"GOT GIFME TEXT WORKING!"];
        [subtitle1Text setAlignmentMode:kCAAlignmentCenter];
        [subtitle1Text setForegroundColor:[[UIColor whiteColor] CGColor]];

        // 2 - The usual overlay
        CALayer *overlayLayer = [CALayer layer];
        [overlayLayer addSublayer:subtitle1Text];
        overlayLayer.frame = CGRectMake(0, 0, size.width, size.height);
        [overlayLayer setMasksToBounds:YES];
        
        CALayer *parentLayer = [CALayer layer];
        CALayer *videoLayer = [CALayer layer];
        parentLayer.frame = CGRectMake(0, 0, size.width, size.height);
        videoLayer.frame = CGRectMake(0, 0, size.width, size.height);
        [parentLayer addSublayer:videoLayer];
        [parentLayer addSublayer:overlayLayer];
        
        composition.animationTool = [AVVideoCompositionCoreAnimationTool
                                     videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer:videoLayer inLayer:parentLayer];
}

- (void)showVideoWithURL:(NSURL *)url {
    AVURLAsset *asset = [AVURLAsset assetWithURL:url];
    AVAssetReader *reader = [AVAssetReader assetReaderWithAsset:asset error:nil];
    AVAssetTrack *videoTrack = [asset tracksWithMediaType:AVMediaTypeVideo][0];
    
    AVAssetReaderTrackOutput *readerOutput = [AVAssetReaderTrackOutput assetReaderTrackOutputWithTrack:videoTrack outputSettings:nil];
    [reader addOutput:readerOutput];
    [reader startReading];
    
    int numFrames = 0;
    
    while (true) {
        if (![readerOutput copyNextSampleBuffer]) {
            break;
        }
        numFrames++;
    }
    
    float framesPerSecond = [videoTrack nominalFrameRate];
    float delayTime = 1 / framesPerSecond;
    NSLog(@"numFrames: %d, fps: %f, delayTime: %f", numFrames, framesPerSecond, delayTime);
    self.videoAsset = [AVAsset assetWithURL:url];
    [self addTextToVideoAssetWithCompletionHandler:^(NSURL *newUrl) {
        [NSGIF createGIFfromURL:newUrl withFrameCount:numFrames delayTime:delayTime loopCount:0 completion:^(NSURL *GifURL) {
            
            NSLog(@"Finished generating GIF: %@", GifURL);
            
            [UIView animateWithDuration:0.3 animations:^{
                self.loading = NO;
            }];
            [self.webView loadRequest:[NSURLRequest requestWithURL:GifURL]];
            
            UIAlertView *alert;
            if (GifURL)
                alert = [[UIAlertView alloc] initWithTitle:@"Yaay!" message:@"You successfully created your GIF!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            else
                alert = [[UIAlertView alloc] initWithTitle:@"Ooops!" message:@"Hmm... Something went wrong here!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    //            [alert show];
        }];
    }];
//    [AddTextToVideoHelper addTextToVideoUrl:url onComplete:^(NSURL *newUrl) {
//        [NSGIF createGIFfromURL:newUrl withFrameCount:numFrames delayTime:delayTime loopCount:0 completion:^(NSURL *GifURL) {
//
//            NSLog(@"Finished generating GIF: %@", GifURL);
//
//            [UIView animateWithDuration:0.3 animations:^{
//                self.loading = NO;
//            }];
//            [self.webView loadRequest:[NSURLRequest requestWithURL:GifURL]];
//
//            UIAlertView *alert;
//            if (GifURL)
//                alert = [[UIAlertView alloc] initWithTitle:@"Yaay!" message:@"You successfully created your GIF!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//            else
//                alert = [[UIAlertView alloc] initWithTitle:@"Ooops!" message:@"Hmm... Something went wrong here!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//    //            [alert show];
//        }];
//    }];
//    CMTime vid_duration = videoTrack.timeRange.duration;
//    CMTimeRange vid_timerange = CMTimeRangeMake(kCMTimeZero, asset.duration);
//
//    AVMutableComposition *composition = [[AVMutableComposition alloc] init];
//    AVMutableCompositionTrack *compositionVideoTrack = [composition addMutableTrackWithMediaType:AVMediaTypeVideo preferredTrackID:0];
//    [compositionVideoTrack insertTimeRange:vid_timerange ofTrack:videoTrack atTime:kCMTimeZero error:nil];
//
//    compositionVideoTrack.preferredTransform = videoTrack.preferredTransform;
//    CGSize size = videoTrack.naturalSize;
//
//    CATextLayer *titleLayer = [[CATextLayer alloc] init];
//    titleLayer.backgroundColor = [UIColor whiteColor].CGColor;
//    titleLayer.string = @"My first GifMe Text!";
//    titleLayer.font = (__bridge CFTypeRef)[UIFont fontWithName:@"Helvetica" size:20.0f];
//    titleLayer.shadowOpacity = 0.5f;
//    titleLayer.alignmentMode = kCAAlignmentCenter;
//    titleLayer.frame = CGRectMake(0, 50, size.width, size.height / 6);
//
//    CALayer *videoLayer = [[CALayer alloc] init];
//    videoLayer.frame = CGRectMake(0, 0, size.width, size.height);
//
//    CALayer *parentLayer = [[CALayer alloc] init];
//    parentLayer.frame = CGRectMake(0, 0, size.width, size.height);
//    [parentLayer addSublayer:videoLayer];
//    [parentLayer addSublayer:titleLayer];
//
//    AVMutableVideoComposition *layerComposition = [[AVMutableVideoComposition alloc] init];
//    layerComposition.frameDuration = CMTimeMake(1, 30);
//    layerComposition.renderSize = size;
//    layerComposition.animationTool = [AVVideoCompositionCoreAnimationTool videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer:videoLayer inLayer:parentLayer];
//
//    AVMutableVideoCompositionInstruction *instruction = [[AVMutableVideoCompositionInstruction alloc] init];
//    instruction.timeRange = CMTimeRangeMake(kCMTimeZero, composition.duration);
//    AVAssetTrack *trackForInstructions = [composition tracksWithMediaType:AVMediaTypeVideo][0];
//    AVMutableVideoCompositionLayerInstruction *layerInstruction = [AVMutableVideoCompositionLayerInstruction videoCompositionLayerInstructionWithAssetTrack:trackForInstructions];
//    instruction.layerInstructions = @[layerInstruction];
//    layerComposition.instructions = @[instruction];
//
//    NSArray *dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *movieFilePath = [dirPaths[0] stringByAppendingPathComponent:@"result.mov"];
//    NSURL *movieDestinationUrl = [NSURL fileURLWithPath:movieFilePath];
//
//    AVAssetExportSession *assetExport = [[AVAssetExportSession alloc] initWithAsset:composition presetName:AVAssetExportPresetPassthrough];
//    assetExport.outputFileType = AVFileTypeQuickTimeMovie;
//    assetExport.outputURL = movieDestinationUrl;
//    assetExport.videoComposition = layerComposition;
//    [assetExport exportAsynchronouslyWithCompletionHandler:^{
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [self createGifFromURL:movieDestinationUrl frameCount:numFrames delayTime:delayTime];
//        });
//    }];
}

- (void)createGifFromURL:(NSURL *)url frameCount:(int)numFrames delayTime:(int)delayTime {
    [NSGIF createGIFfromURL:url withFrameCount:numFrames delayTime:delayTime loopCount:0 completion:^(NSURL *GifURL) {
        
        NSLog(@"Finished generating GIF: %@", GifURL);
        
        [UIView animateWithDuration:0.3 animations:^{
            self.loading = NO;
        }];
        [self.webView loadRequest:[NSURLRequest requestWithURL:GifURL]];
        
        UIAlertView *alert;
        if (GifURL)
            alert = [[UIAlertView alloc] initWithTitle:@"Yaay!" message:@"You successfully created your GIF!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        else
            alert = [[UIAlertView alloc] initWithTitle:@"Ooops!" message:@"Hmm... Something went wrong here!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//            [alert show];
    }];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    self.didPickVideo = YES;
    self.loading = YES;
    [self dismissViewControllerAnimated:YES completion:nil];
    
    NSURL *url = info[UIImagePickerControllerMediaURL];
    if (url) {
        [self showVideoWithURL:url];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    NSLog(@"Received memory warning. Try to tweak your GIF parameters to optimise the converting process.");
    
    // Dispose of any resources that can be recreated.
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
}

@end
