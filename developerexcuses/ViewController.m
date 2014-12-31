//
//  ViewController.m
//  developerexcuses
//
//  Created by tihm on 31.12.14.
//  Copyright (c) 2014 tihmstar. All rights reserved.
//

#import "ViewController.h"
#import "devEx.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

-(void)buttonPressed{
    _label.text = [devEx getExcuse];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _label.adjustsFontSizeToFitWidth = NO;
    _label.numberOfLines = 0;
    
    [[_button layer] setBorderWidth:2.0f];
    [[_button layer] setBorderColor:[UIColor blueColor].CGColor];
    [_button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [self buttonPressed];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
