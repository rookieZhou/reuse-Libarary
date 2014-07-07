//
//  AnimatedGifExampleAppDelegate.m
//  AnimatedGifExample
//
//  Created by Stijn Spijker on 05-07-09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "AnimatedGifExampleAppDelegate.h"
#import "AnimatedGifExampleViewController.h"

@implementation AnimatedGifExampleAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    NSString *gifFile = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"apple_logo_animated.gif"];
    NSData *gifData = [NSData dataWithContentsOfFile:gifFile];
    
    void *headerBuffe;
    [gifData getBytes:headerBuffe range:NSMakeRange(0, 6)];
    
    NSString *s = [[NSString alloc] initWithBytes:headerBuffe length:6 encoding:NSUTF8StringEncoding];
    NSLog(@"%@",s);
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
