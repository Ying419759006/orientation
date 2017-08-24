//
//  AppDelegate.m
//  横屏测试
//
//  Created by YanqiaoW on 17/8/23.
//  Copyright © 2017年 ewbao. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()



@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //解决横屏后状态栏不显示问题
    //1.在info.plist文件中设置View controller-based status bar appearance = NO;
    //2.如下
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationNone];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone];
    

    return YES;
}



- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(nullable UIWindow *)window{
    
    //横屏
    if (self.allowRotation) {
        
        return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight | UIInterfaceOrientationMaskPortrait ;
        
    }
    
    //竖屏
    return UIInterfaceOrientationMaskPortrait;
}
@end
