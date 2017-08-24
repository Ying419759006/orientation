//
//  ViewController.m
//  横屏测试
//
//  Created by YanqiaoW on 17/8/23.
//  Copyright © 2017年 ewbao. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor greenColor];
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 200)];
    lab.numberOfLines = 0;
    lab.backgroundColor = [UIColor orangeColor];
    lab.text = @"巴比特询问孙江涛是否找到了他所认为的格局更大的事情，“有两个方向吧。一个是区块链方向，我看好技术的力量；另一个是人的方向，我看好人的潜力，也希望帮助更多人实现他们的中国梦。”孙江涛给出了自己的选择为连续成功创业者，孙江涛一次次把握时代机遇，在过去的十多年间，成功创办了五家公司，其中，神州付在香港挂牌上市，钱袋宝在2016年被卖给了美团点评。在企业进入成长期后，公司的商业模式已经差不多稳定下来了，业务方向也有了较明确的目标，也开始有一定的利润空间。这个时候就需要整个创业团队有更加敏锐的市场嗅觉，能不能观察到市场的变化、机会的窗口在哪里，这时候考验的是创始人对趋势、形式的判断，能不能把这个企业推向一个新的发展维度，要注意选择的方向。这个时期一定要警惕“温水煮青蛙”效应，必须要有居安思危的精神，考虑如何让公司在更大的方向上获得进一步的发展。特别是互联网行业，变化是极其迅速的。";
    lab.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:lab];
    
    CGFloat btnWH = 40;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(self.view.bounds.size.width - 50, self.view.bounds.size.height - 50, btnWH, btnWH);
    btn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin;
    [btn setTitle:@"转" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
    [btn addTarget:self action:@selector(clickBut:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    ((AppDelegate *)[UIApplication sharedApplication].delegate).allowRotation = YES;
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    ((AppDelegate *)[UIApplication sharedApplication].delegate).allowRotation = NO;
}

/*************************************在某个控制器内单独设置是否支持横屏*******************************************/

//总开关, 判断是否可以控制屏幕方向
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}

//次控制器支持什么屏幕方向
#if __IPHONE_OS_VERSION_MAX_ALLOWED < __IPHONE_9_0
- (NSUInteger)supportedInterfaceOrientations
#else
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
#endif
{
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationLandscapeLeft;
}

- (void)clickBut:(UIButton *)btn
{
    NSLog(@"点击了横屏按钮");
    btn.selected = !btn.isSelected;
    
    if (btn.selected) {

        //设置横屏
        NSNumber *value = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeLeft];
        [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
        
        
    } else {

        //设置竖屏
        NSNumber *value = [NSNumber numberWithInt:UIInterfaceOrientationPortrait];
        [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
        
    }
    
}


@end
