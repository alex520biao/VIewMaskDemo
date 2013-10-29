//
//  ViewController.m
//  VIewMaskDemo
//
//  Created by alex on 13-10-22.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "CustomView1.h"
#import "CustomView2.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CustomView *cusotmView=[[CustomView alloc]initWithFrame:CGRectMake(100, 50, 100, 100)];
    cusotmView.backgroundColor=[UIColor blueColor];
    [self.view addSubview:cusotmView];
    
    
    CustomView1 *cusotmView1=[[CustomView1 alloc]initWithFrame:CGRectMake(100, 180, 100, 100)];
    cusotmView1.backgroundColor=[UIColor blueColor];
    [self.view addSubview:cusotmView1];
    
    CustomView2 *cusotmView2=[[CustomView2 alloc]initWithFrame:CGRectMake(100, 310, 100, 100)];
    cusotmView2.backgroundColor=[UIColor blueColor];
    [self.view addSubview:cusotmView2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
