//
//  UIImage+Util.h
//  ShipStation
//
//  Created by Miguel Cazares on 2/20/15.
//  Copyright (c) 2015 ShipStation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Util)

+ (UIImage *)imageNamed:(NSString *)name color:(UIColor *)color;
- (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageNamed:(NSString *)name color:(UIColor *)color size:(NSInteger)size;

@end
