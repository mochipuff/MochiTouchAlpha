//
//  MLPViewController.h
//  MochiTouchAlpha
//
//  Created by Mochi Puff on 3/27/13.
//  Copyright (c) 2013 Meredith Prince. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLPViewController : UIViewController

@property (weak, nonatomic) UIButton *randomPercentButton;

@property (weak, nonatomic) UIButton *fiftyPercentButton;

@property (weak, nonatomic) UIButton *hundredPercentButton;

- (void)buttonPressed:(UIButton *)sender;

@end
