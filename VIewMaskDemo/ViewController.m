//
//  ViewController.m
//  VIewMaskDemo
//
//  Created by alex on 13-10-22.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CustomView *cusotmView=[[CustomView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:cusotmView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
