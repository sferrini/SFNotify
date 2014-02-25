//
//  ViewController.m
//  Demo
//
//  Created by Simone Ferrini on 24/02/14.
//  Copyright (c) 2014 Simone Ferrini. All rights reserved.
//

#import "ViewController.h"

#warning - Use this to import the "SFNotify":
#import "SFNotify.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)SFNotify:(id)sender
{
#warning - Use this to notify:
    NSString *yourMessage = [NSString stringWithFormat:@"This is the:\nSFNotify"];  //Change the text
    
    [self.view notify:yourMessage
        withDirection:DEFAULT_DIRECTION
  withBackgroundColor:DEFAULT_COLOR_BACKGROUND
             withFont:DEFAULT_FONT
        withTextColor:DEFAULT_TEXT_COLOR
         withDuration:DEFAULT_TIME_DURATION];
    
#warning - Use this to create a custom notify:
//    NSString *yourCustomMessage = [NSString stringWithFormat:@"This is the custom:\nSFNotify\n\nFeel free to modify whatever you want"];  //Change the text
//    
//    [self.view notify:yourCustomMessage
//        withDirection:DIRECTION_LEFT_TO_RIGHT  //Custom direction
//  withBackgroundColor:[UIColor blackColor] //Custom notify background color
//             withFont:[UIFont fontWithName:@"menlo" size:12] //Custom font
//        withTextColor:[UIColor whiteColor] //Custom font color
//         withDuration:4.0]; //Custom duration
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
