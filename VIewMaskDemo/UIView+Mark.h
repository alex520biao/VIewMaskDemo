//
//  UIView+Mark.h
//  BaiduVideo-iPad
//
//  Created by alex on 13-10-18.
//  Copyright (c) 2013年 Baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Mark)
-(void)mark;
-(void)markWithBackgroundColor:(UIColor*)bgColor textColor:(UIColor*)textColor;
//方法1
+(void)start1;
//方法2
+(void)start2;

//在application:didFinishLaunchingWithOptions:方法中调用 [UIView start2];
@end

@interface UIViewController (Mark)
-(void)mark;
-(void)markWithBackgroundColor:(UIColor*)bgColor textColor:(UIColor*)textColor;
@end
