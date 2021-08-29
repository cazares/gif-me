//
//  NSString+Util.h
//  ShipStation
//
//  Created by Miguel Cazares on 5/7/15.
//  Copyright (c) 2015 ShipStation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Util)

- (NSString *)urlencode;
- (NSString *)tripleDots;
- (NSString *)colon;
- (NSString *)period;
- (NSString *)backArrow;
- (NSString *)forwardArrow;
- (NSString *)capitalizeFirstLetter;

+ (NSString *)localizedStringWithKey:(NSString *)key;
+ (NSString *)localizedStringWithKey:(NSString *)key intValue:(unsigned long)intValue;

@end
