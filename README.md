VIewMaskDemo
============

调试时给UIView添加mask，方便调试;   

1.添加UIView+Mark.h和UIView+Mark.m文件到工程   
2.所需框架QuartzCore.framework   
3.工程的XXXX-Prefix.pch文件中添加  
      #import "UIView+Mark.h"    
4.修改UIView+Mark.m中的如下方法   
      -(void)displayMask{   
            //Bool为是否标记，key需要标记的自定义视图及视图控制器   
            [dict setValue:[NSNumber numberWithBool:NO] forKey:@"CMTabBarController"];   
      }

