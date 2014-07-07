//
//  AnimatedGifExampleViewController.m
//  AnimatedGifExample
//
//  Created by Stijn Spijker on 05-07-09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "AnimatedGifExampleViewController.h"

@implementation AnimatedGifExampleViewController

//
// viewDidLoad
//
// Get's the animated gif, and places it on the view.
// ---
- (void)viewDidLoad
{
	[super viewDidLoad];
    
    // First example, a local file
    NSURL 			* firstUrl = 		[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"apple_logo_animated" ofType:@"gif"]];
    UIImageView 	* firstAnimation = 	[AnimatedGif getAnimationForGifAtUrl: firstUrl];
    
    // Second example, through HTTP
    NSURL 		* secondUrl = 			[NSURL URLWithString:@"http://www.gifs.net/Animation11/Food_and_Drinks/Fruits/Apple_jumps.gif"];
    UIImageView * secondAnimation = 	[AnimatedGif getAnimationForGifAtUrl: secondUrl];
	
	
	NSURL			*threeUrl =			[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"11" ofType:@"gif"]];
	UIImageView		*threeAnimation =   [AnimatedGif getAnimationForGifAtUrl:threeUrl];
	
	NSLog(@" threeUrl = %@ " , threeUrl);
	
	NSLog(@" secondUrl = %@",secondUrl);
    
    // Add them to the view.
	[theFirstAnimatedGif addSubview:threeAnimation];
	[theSecondAnimatedGif addSubview:secondAnimation];

	
	
//	[firstUrl release];
//	[secondUrl release];
//	[threeUrl release];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.

    [super didReceiveMemoryWarning];
}

@end
