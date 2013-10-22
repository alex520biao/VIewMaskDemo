//
//  UIView+Mark.m
//  BaiduVideo-iPad
//
//  Created by alex on 13-10-18.
//  Copyright (c) 2013年 Baidu. All rights reserved.
//

#import "UIView+Mark.h"
#import <QuartzCore/QuartzCore.h>
#import <objc/runtime.h>
#import <objc/objc.h>

#define markLabTag 9999
@implementation UIView (Mark)

-(void)mark{    
    [self markWithBackgroundColor:[UIColor colorWithRed:1.0 green:0 blue:0 alpha:0.8] textColor:[UIColor blueColor]];
}

-(void)markWithBackgroundColor:(UIColor*)bgColor textColor:(UIColor*)textColor{
    UILabel *maskLab=(UILabel*)[self viewWithTag:markLabTag];
    if (maskLab) {
        maskLab.frame=self.bounds;
        [self bringSubviewToFront:maskLab];
    }else{
        maskLab=[[UILabel alloc] initWithFrame:self.bounds];
        maskLab.font=[UIFont systemFontOfSize:9];
        maskLab.backgroundColor=bgColor;
        maskLab.textColor=textColor;
        maskLab.textAlignment=NSTextAlignmentCenter;
        maskLab.text=NSStringFromClass(self.class);
        maskLab.adjustsFontSizeToFitWidth=YES;
        maskLab.tag=markLabTag;
        [self addSubview:maskLab];
        maskLab.layer.borderWidth=2;
        maskLab.layer.borderColor=[[UIColor blueColor] CGColor];
    }
}

-(void)displayMask{
    //展示筛选
    NSMutableDictionary *dict=[[NSMutableDictionary alloc] init];
    //标签栏控制器CMTabBarController
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"CMTabBarController"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"CMTabBar"];
    
    //HomeRecommendViewController
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"HomeRecommendViewController"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"HomeRecommendCell"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"HomeRecommendItemView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"CarouselViewController"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"CarouselVideoIntroView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"CarouselPageControl"];
    
    //MovieViewController
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"MovieTableController"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"MovieTableCell"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"MovieViewController"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"MovieViewCell"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"YBMovieViewController"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"BVGridViewColumn"];
    //SortView
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"SortView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"SortStyleTopBar"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"SortSectionView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"SortStyleTopBar"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"SortSectionBar"];
    //RankingViewController
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"RankingViewController"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"RankingView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"RankingSectionTopBar"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"RankingItemView"];
    
    //Detail 视频详细模块
    //综艺视频详细页面
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"VideoDetailView"];
    //headerView（标题栏）、seasonTabView（季部选择）、topView（包含视频基本信息、播放源选择）
    //entertainmentListView（综艺列表视图，综艺特有）、tVSeriesView（剧集键盘、连续剧和动漫特有）、storyDetailView（剧情视图）、footerView（底栏），根据视频的类型，进行组合。
    
    //entertainmentListView（综艺列表视图）
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"EntertainmentListView"];
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"EntertainmentCell"];
    
    //动漫、电视剧等第几部或第几季(美剧、动漫等)，如美剧“破产姐妹 第一季 第二季 第三季。爱情公寓 第一部、第二部、第三部等”
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"SeasonTabView"];//第几部
    
    //综艺等节目的月份选择列表，如“1月、2月、三月、四月等”
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"SliderTabView"];//月份选择视图
    
    //连续剧等选集视图
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"TVSeriesView"];//选集视图
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"TVSeriesKeyoardBarView"];//如1~20，21~40
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"KeyboardView"];//如第~集
    
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"BVSimilarRecommandView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"BVBdhdRecommandView"];
    
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"PlaySourceView"];
    
    //UserSetting
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"UserViewController"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"SwitchView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"SwitchButton"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"TopBarView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"UserContentView"];//未使用
    
    //EncourageView(提示评论)
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"EncourageView"];
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"EncourageTipView"];
    //关于
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"AboutView"];
    //收藏
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"FavouriteView"];
    //功能设置
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"FunctionSettingView"];
    //意见反馈
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"AdviseView"];
    //应用推荐
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"AppRecommendView"];//(UIWebView展示数据)
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"ApplicationItemView"];//未使用
    //版本更新视图
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"VersionUpdateView"];
    //修改密码
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"BDCastPwdChangeViewController"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"BDCastPwdChangeView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"SpaceTextField"];
    //播放记录
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"HistoryTableController"];
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"HistoryTableCell"];
    
    //DownloadManager
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"DownloadManagerViewController"];
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"DownloadCell"];
    
    //Common
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"EditBVGridViewColumn"];
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"EditMovieViewCell"];
    
    //未使用
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"VideoItemListView"];
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"VideoItemView"];
    
    //UI/Browser 浏览器模块
    
    //UI/Search 搜索模块
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"SearchViewController"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"HotKeyView"];//搜索关键字
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"VideoDetailListView"];
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"CategorySwitchView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"SearchResultView"];
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"SearchBarView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"DropdownListView"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"RSGridViewColumn"];
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"SearchResultCell"];
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"GTPCell"];//搜索结果单个方形格
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"UFPCell"];
    [dict setValue:[NSNumber numberWithBool:NO] forKey:@"HotkeySearchHistoryContainerView"];//未使用
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"SearchHistroyView"];//未使用
    
    [dict setValue:[NSNumber numberWithBool:YES] forKey:@"ViewController"];
    
    //UI/CoverStory 封面故事
    
    //self为UIView及其子类对象
    if ([self isKindOfClass:[UIView class]]) {
        BOOL class=[[dict valueForKey:NSStringFromClass([self class])] boolValue];
        if (class) {
            [self mark];
        }
    }
    
    //self.nextResponder为UIViewController及其子类对象
    if ([self.nextResponder isKindOfClass:[UIViewController class]]) {
        BOOL nextClass=[[dict valueForKey:NSStringFromClass([self.nextResponder class])] boolValue];
        if (nextClass) {
            [(UIViewController*)self.nextResponder mark];
        }
    }
}

#pragma mark 重写父类方法
//重写didMoveToSuperview方法
-(void)didMoveToSuperview{
    [self displayMask];
}

//重写didAddSubview方法
-(void)didAddSubview:(UIView *)subview{
    [self displayMask];
}

////重写drawRect方法
//-(void)drawRect:(CGRect)rect{
//    [self displayMask];
//}

//重写layoutSubviews方法
-(void)layoutSubviews{
    [self displayMask];
}

#pragma mark 方法1
static IMP UIView_drawRect_old;//函数指针，保存UIView类的原始drawRect方法
// 替换后的dealloc函数，注意函数名必需以两个"$"符开始。
static void $$UIView_drawRect(UIView *self, SEL op, CGRect rect) {
    // 调用dealloc方法。
	UIView_drawRect_old(self, op, rect);
    
    //自定义
    [self displayMask];
}

//截获UIView的drawRect、layoutSubviews方法
+(void)start1{
    // 获取dealloc函数指针。
    Method method_drawRect = class_getInstanceMethod([UIView class], @selector(drawRect:));
    UIView_drawRect_old = class_getMethodImplementation([UIView class], @selector(drawRect:));
    // 替换dealloc方法。
    class_replaceMethod([UIView class], @selector(drawRect:), (IMP)$$UIView_drawRect, method_getTypeEncoding(method_drawRect));//"v@:"表示$$UIView_drawRect的返回值、第一、第二参数
}


#pragma mark 方法2
//static SEL drawRect_old;//函数指针，保存UIView类的原始drawRect方法
+ (void)start2
{
    Method method_drawRect = class_getInstanceMethod([UIView class], @selector(drawRect:));
    Method method_drawRectHooked = class_getInstanceMethod([UIView class], @selector(drawRectHooked:));
    
    // 将目标函数的原实现绑定到sendEventOriginalImplemention方法上
    IMP imp_drawRect = method_getImplementation(method_drawRect);
    IMP imp_drawRectHooked = method_getImplementation(method_drawRectHooked);
    class_addMethod([UIView class], @selector(drawRectOld:), imp_drawRect, method_getTypeEncoding(method_drawRect));
    
    // 然后用我们自己的函数的实现，替换目标函数对应的实现
    class_replaceMethod([UIView class], @selector(drawRect:), imp_drawRectHooked, method_getTypeEncoding(method_drawRect));    
}

/*
 * 截获到UIView的drawRect
 * 我们可以先处理完以后，再继续调用正常处理流程
 */
- (void)drawRectHooked:(CGRect)rect
{
    // invoke original implemention
    [self performSelector:@selector(drawRectOld:) withObject:[NSValue valueWithCGRect:rect]];

    // do something what ever you want
    [self displayMask];    
}

@end

@implementation UIViewController (Mark)
-(void)mark{
    [self markWithBackgroundColor:[UIColor colorWithRed:1.0 green:0 blue:0 alpha:0.8] textColor:[UIColor blueColor]];
}

-(void)markWithBackgroundColor:(UIColor*)bgColor textColor:(UIColor*)textColor{
    UILabel *maskLab=(UILabel*)[self.view viewWithTag:markLabTag];
    if (maskLab) {
        maskLab.frame=self.view.bounds;
        [self.view bringSubviewToFront:maskLab];
    }else{
        maskLab=[[UILabel alloc] initWithFrame:self.view.bounds];
        maskLab.font=[UIFont systemFontOfSize:9];
        maskLab.backgroundColor=bgColor;
        maskLab.textColor=textColor;
        maskLab.textAlignment=NSTextAlignmentCenter;
        maskLab.text=NSStringFromClass(self.class);
        maskLab.adjustsFontSizeToFitWidth=YES;
        maskLab.tag=markLabTag;
        [self.view addSubview:maskLab];
        maskLab.layer.borderWidth=2;
        maskLab.layer.borderColor=[[UIColor blueColor] CGColor];
    }
}
@end
