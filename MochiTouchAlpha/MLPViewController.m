//
//  MLPViewController.m
//  MochiTouchAlpha
//
//  Created by Mochi Puff on 3/27/13.
//  Copyright (c) 2013 Meredith Prince. All rights reserved.
//

#import "MLPViewController.h"

@interface MLPViewController ()

@end

@implementation MLPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Make mauve background.
    self.view.backgroundColor = [UIColor colorWithRed:0.80 green:0.60 blue:0.65 alpha:1.0];
}
- (void)loadView
{
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view = view;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Oh, someone is touching the screen!!");
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Yay, the touching stopped!");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
