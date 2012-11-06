//
//  ViewController.h
//  ShakeUIView
//
//  Created by Suraj Mirajkar on 06/11/12.
//  Copyright (c) 2012 suraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
}

@property (retain, nonatomic) IBOutlet UIImageView *imgViewToShake;
- (IBAction)startShaking:(id)sender;
- (IBAction)stopShaking:(id)sender;
@end
