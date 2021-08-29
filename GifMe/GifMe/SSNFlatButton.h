//
//  SSNFlatButton.h
//  ShipStation
//
//  Created by Miguel Cazares on 4/16/15.
//  Copyright (c) 2015 ShipStation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSNConstants.h"

@interface SSNFlatButton : UIButton

- (instancetype)initWithTitle:(NSString *)title view:(UIView *)view handler:(SSNEmptyBlock)handler;
- (instancetype)initRateCalculatorButtonWithView:(UIView *)view handler:(SSNEmptyBlock)handler;
- (instancetype)initButtonWithView:(UIView *)view
                             title:(NSString *)title
                           handler:(SSNEmptyBlock)handler
                       activeColor:(UIColor *)activeColor
                      pressedColor:(UIColor *)pressedColor
                          fontSize:(CGFloat)fontSize;

@end
