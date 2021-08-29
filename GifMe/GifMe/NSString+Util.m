//
//  NSString+Util.m
//  ShipStation
//
//  Created by Miguel Cazares on 5/7/15.
//  Copyright (c) 2015 ShipStation. All rights reserved.
//

#import "NSString+Util.h"
#import "SSNConstants.h"

@implementation NSString (Util)

// borrowed from http://stackoverflow.com/a/8088484
- (NSString *)urlencode {
    NSMutableString *output = [NSMutableString string];
    const unsigned char *source = (const unsigned char *)[self UTF8String];
    int sourceLen = (int)strlen((const char *)source);
    for (int i = 0; i < sourceLen; ++i) {
        const unsigned char thisChar = source[i];
        if (thisChar == ' ') {
            [output appendString:@"+"];
        } else if (thisChar == '.' || thisChar == '-' || thisChar == '_' || thisChar == '~' ||
                   (thisChar >= 'a' && thisChar <= 'z') ||
                   (thisChar >= 'A' && thisChar <= 'Z') ||
                   (thisChar >= '0' && thisChar <= '9')) {
            [output appendFormat:@"%c", thisChar];
        } else {
            [output appendFormat:@"%%%02X", thisChar];
        }
    }
    return output;
}

- (NSString *)tripleDots {
    return [self suffixWith:@"..."];
}

- (NSString *)colon {
    return [self suffixWith:@":"];
}

- (NSString *)period {
    return [self suffixWith:@"."];
}

- (NSString *)backArrow {
    return [self prefixWith:@"‹ "];
}

- (NSString *)forwardArrow {
    return [self suffixWith:@" ›"];
}

- (NSString *)prefixWith:(NSString *)prefix {
    return [NSString stringWithFormat:@"%@%@", prefix, self];
}

- (NSString *)suffixWith:(NSString *)suffix {
    return [NSString stringWithFormat:@"%@%@", self, suffix];
}

- (NSString *)capitalizeFirstLetter {
    if (self.length == 0) {
        return self;
    }
    return [NSString stringWithFormat:@"%@%@",[self substringToIndex:1].uppercaseString, [self substringFromIndex:1]];
}

// adapted from https://stackoverflow.com/a/10513294
+ (NSString *)localizedStringWithKey:(NSString *)key {
    if (!key) {
        return kDefaultString;
    }
    // default localized string loading
    NSString *localizedString = [[NSBundle mainBundle] localizedStringForKey:key value:key table:nil];
    if (!localizedString || [localizedString isEqualToString:kDefaultString]) {
        return key;
    }
    return localizedString;
}

+ (NSString *)localizedStringWithKey:(NSString *)key intValue:(unsigned long)intValue {
    if (!key) {
        return kDefaultString;
    }
    NSString *localized = [NSString localizedStringWithKey:key];
    if (!localized || [localized isEqualToString:kDefaultString]) {
        return key;
    }
    @try {
        return [NSString stringWithFormat:localized, intValue];
    }
    @catch (NSException *exception) {
        return localized;
    }
}
@end
