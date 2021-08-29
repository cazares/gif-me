//
//  ViewController.h
//  GifMe-OSX
//
//  Copyright (c) 2015 Miguel Cazares. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface ViewController : NSViewController

@property (strong) IBOutlet WebView *webView;
@property (strong) IBOutlet NSTextField *textField;
@property (strong) IBOutlet NSProgressIndicator *activityIndicator;

@end

