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
    self.view.backgroundColor = [UIColor colorWithRed:0.80 green:0.60 blue:0.65
                                                alpha:1.0];
    
    // Make a transparent welcome label with frame
    UILabel *firstLabel = [[UILabel alloc]
                           initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.backgroundColor = [UIColor clearColor];
    firstLabel.text = @"Hello, welcome to my app!";
    [self.view addSubview:firstLabel];
    
    // Make a button titled random that turns a darker shade of pink when
    // clicked and does something when clicked.
    self.randomPercentButton = [UIButton
                                buttonWithType:UIButtonTypeRoundedRect];
    self.randomPercentButton.frame = CGRectMake(110, 100, 100, 44);
    self.randomPercentButton.tintColor = [UIColor colorWithRed:0.80 green:0.50
                                                          blue:0.55 alpha:1.0];
    [self.randomPercentButton setTitle:@"Random"
                              forState:UIControlStateNormal];
    [self.randomPercentButton setTitle:@"???"
                              forState:UIControlStateHighlighted];
    [self.view addSubview:self.randomPercentButton];
    
    [self.randomPercentButton addTarget:self
                                 action:@selector(buttonPressed:)
                       forControlEvents:UIControlEventTouchUpInside];
    
    // Make a button titled 50% that does something when clicked.
    self.fiftyPercentButton = [UIButton
                               buttonWithType:UIButtonTypeRoundedRect];
    self.fiftyPercentButton.frame = CGRectMake(110, 175, 100, 44);
    [self.fiftyPercentButton setTitle:@"50%"
                             forState:UIControlStateNormal];
    [self.view addSubview:self.fiftyPercentButton];
    
    [self.fiftyPercentButton addTarget:self
                                action:@selector(buttonPressed:)
                      forControlEvents:UIControlEventTouchUpInside];
    
    // Make a button titled 100% that does something when clicked.
    self.hundredPercentButton = [UIButton
                                 buttonWithType:UIButtonTypeRoundedRect];
    self.hundredPercentButton.frame = CGRectMake(110, 250, 100, 44);
    [self.hundredPercentButton setTitle:@"100%"
                               forState:UIControlStateNormal];
    [self.view addSubview:self.hundredPercentButton];
    
    [self.hundredPercentButton addTarget:self
                                  action:@selector(buttonPressed:)
                        forControlEvents:UIControlEventTouchUpInside];
}
- (void)loadView
{
    UIView *view = [[UIView alloc]
                    initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view = view;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Log that the screen was touched.
    NSLog(@"Oh, someone is touching the screen!!");
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Randomize transparency and log that touching has stopped.
    self.view.alpha = ((double)arc4random() / 0x100000000);
    NSLog(@"Yay, the touching stopped!");
}
- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    // If the 50% button is clicked, set screen transparency to 50%.
    // Or if the 100% button is clicked, set screen transparency to 100%.
    // Otherwise, set screen transparency to a random value.
    if ([sender isEqual:self.fiftyPercentButton]) {
        self.view.alpha = 0.5;
    } else if ([sender isEqual:self.hundredPercentButton]) {
        self.view.alpha = 1.0;
    } else {
        self.view.alpha = ((double)arc4random() / 0x100000000);
    }
    // Removed the clicked button from view.
    [sender removeFromSuperview];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
