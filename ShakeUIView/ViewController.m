//
//  ViewController.m
//  ShakeUIView
//
//  Created by Suraj Mirajkar on 06/11/12.
//  Copyright (c) 2012 suraj. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
    #define RADIANS(degrees) ((degrees * M_PI) / 180.0)
@end

@implementation ViewController
@synthesize imgViewToShake;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)startShaking:(id)sender {
    [self startWobble];
}

- (IBAction)stopShaking:(id)sender {
    [self stopWobble];
}

- (void)startWobble {
    imgViewToShake.transform = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(-5));
    
    [UIView animateWithDuration:0.25
                          delay:0.0
                        options:(UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse)
                     animations:^ {
                         imgViewToShake.transform = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(5));
                     }
                     completion:NULL
     ];
}

- (void)stopWobble {
    [UIView animateWithDuration:0.25
                          delay:0.0
                        options:(UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear)
                     animations:^ {
                         imgViewToShake.transform = CGAffineTransformIdentity;
                     }
                     completion:NULL
     ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [imgViewToShake release];
    [super dealloc];
}

@end
