//
//  UIImage+Util.m
//  ShipStation
//
//  Created by Miguel Cazares on 2/20/15.
//  Copyright (c) 2015 ShipStation. All rights reserved.
//

#import "UIImage+Util.h"

@implementation UIImage (Util)

- (UIImage *)imageWithColor:(UIColor *)color {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0, self.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextClipToMask(context, rect, self.CGImage);
    [color setFill];
    CGContextFillRect(context, rect);
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

+ (UIImage *)imageNamed:(NSString *)name color:(UIColor *)color {
    UIImage *image = [UIImage imageNamed:name];
    return [image imageWithColor:color];
}

+ (UIImage *)imageNamed:(NSString *)name color:(UIColor *)color size:(NSInteger)size {
    UIGraphicsBeginImageContext(CGSizeMake(size, size));
    UIImage *image = [UIImage imageNamed:name color:color];
    [image drawInRect:CGRectMake(0, 0, size, size)];
    UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return destImage;
}

@end
