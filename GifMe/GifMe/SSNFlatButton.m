//
//  SSNFlatButton.m
//  ShipStation
//
//  Created by Miguel Cazares on 4/16/15.
//  Copyright (c) 2015 ShipStation. All rights reserved.
//

#import "SSNFlatButton.h"
#import "UIImage+Util.h"
#import <BlocksKit/BlocksKit+UIKit.h>

static NSString *kPlaceholderImageName = @"placeholder";

@interface SSNFlatButton()

@property (nonatomic) BOOL isRateCalculatorButton;
@property (nonatomic, strong) SSNEmptyBlock buttonHandler;

@end

@implementation SSNFlatButton

- (instancetype)initWithTitle:(NSString *)title view:(UIView *)view handler:(SSNEmptyBlock)handler {
    return [self initWithTitle:title
                          view:view handler:handler
                hasButtonBorder:YES
                    titleColor:[SSNConstants orderDetailButtonPrimaryColor]
               backgroundColor:[UIColor whiteColor]
                      fontSize:SSNMediumButtonFontSize];
}


- (instancetype)initWithTitle:(NSString *)title
                         view:(UIView *)view
                      handler:(SSNEmptyBlock)handler
              hasButtonBorder:(BOOL)hasButtonBorder
                   titleColor:(UIColor *)titleColor
              backgroundColor:(UIColor *)backgroundColor
                     fontSize:(CGFloat)fontSize {
    self = [super init];
    if (self) {
        self.translatesAutoresizingMaskIntoConstraints = NO;
        self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        [self setTitleColor:[SSNConstants secondaryButtonColor] forState:UIControlStateHighlighted];
        self.backgroundColor = backgroundColor;
        if (hasButtonBorder) {
            self.layer.borderColor = [SSNConstants buttonBorderColor].CGColor;
            self.layer.borderWidth = SSNMediumButtonBorder;
        }
        if (handler) {
            self.buttonHandler = handler;
            [self addTarget:self action:@selector(handler) forControlEvents:UIControlEventTouchUpInside];
        }
        [view addSubview:self];
    }
    return self;
}

- (void)handler {
    if (!self.buttonHandler) {
        return;
    }
    self.buttonHandler();
}

- (instancetype)initRateCalculatorButtonWithView:(UIView *)view handler:(SSNEmptyBlock)handler {
    self = [self initButtonWithView:view
                              title:[SSNConstants getRates]
                            handler:handler
                        activeColor:[SSNConstants activeGreenButtonColor]
                       pressedColor:[SSNConstants activeGreenButtonColorPressed]
                           fontSize:SSNLargeButtonFontSize];
    self.isRateCalculatorButton = YES;
    self.enabled = NO;
    return self;
}

- (instancetype)initButtonWithView:(UIView *)view
                             title:(NSString *)title
                           handler:(SSNEmptyBlock)handler
                       activeColor:(UIColor *)activeColor
                      pressedColor:(UIColor *)pressedColor
                          fontSize:(CGFloat)fontSize {
    self = [self initWithTitle:title
                          view:view
                       handler:handler
               hasButtonBorder:NO
                    titleColor:[UIColor whiteColor]
               backgroundColor:activeColor
                      fontSize:fontSize];
    if (self) {
        [self setBackgroundImage:[UIImage imageNamed:kPlaceholderImageName
                                               color:[SSNConstants disabledGrayButtonColor]]
                        forState:UIControlStateHighlighted];
        [self bk_addEventHandler:^(id sender) {
            self.backgroundColor = pressedColor;
        } forControlEvents:UIControlEventTouchDown];
        [self bk_addEventHandler:^(id sender) {
            self.backgroundColor = activeColor;
        } forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchCancel | UIControlEventTouchDragExit];
    }
    return self;
}

- (void)setEnabled:(BOOL)enabled {
    super.enabled = enabled;
    if (self.isRateCalculatorButton) {
        self.backgroundColor = enabled ? [SSNConstants activeGreenButtonColor] : [SSNConstants disabledGrayButtonColor];
    }
}

@end
