//
//  HLMainViewController.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/28.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLMainViewController.h"



@interface HLMainViewController ()

@end

@implementation HLMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self addChildViewControllers];
//    self.tabBar.barTintColor = [UIColor colorWithRed:227.0/255.0 green:227.0/255.0 blue:227.0/255.0 alpha:1.0];
    self.tabBar.tintColor = [UIColor colorWithRed:22.0/255.0 green:147.0/255.0 blue:229.0/255.0 alpha:1.0];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 添加子控制器
/**
 * 添加所有的子控制器
 */
- (void)addChildViewControllers {
    
    // 设置 tabBar 的字体颜色
    // self.tabBar.tintColor = [UIColor cz_colorWithHex:0xDF0000];
    
    // 视图控制器的字典数组
    NSArray *array = @[
                       @{@"clsName": @"HLHomeVC", @"title": @"探索", @"imageName": @"discover"},
                       @{@"clsName": @"HLDemoVC", @"title": @"示例", @"imageName": @"category"},
                       @{@"clsName": @"HLPortalsVC", @"title": @"视窗", @"imageName": @"window"},
                       @{@"clsName": @"HLMeVC", @"title": @"我", @"imageName": @"account"}
                       ];
    
    // 遍历数组，创建控制器数组
    NSMutableArray *arrayM = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        
        [arrayM addObject:[self childControllerWithDict:dict]];
    }
    
    // 设置子控制器数组
    self.viewControllers = arrayM.copy;
}

- (UIViewController *)childControllerWithDict:(NSDictionary *)dict {
    NSString *clsName = dict[@"clsName"];
    Class cls = NSClassFromString(clsName);
    
    NSAssert(cls != nil, @"传入的类名错误");
    UIViewController *vc = [cls new];
    vc.title = dict[@"title"];
    
    NSString *imageName = [NSString stringWithFormat:@"tabbar_icon_%@_normal", dict[@"imageName"]];
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    NSString *imageNameHL = [NSString stringWithFormat:@"tabbar_icon_%@_highlight", dict[@"imageName"]];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:imageNameHL] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    return nav;
}

#pragma mark - 屏幕旋转
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return [self.selectedViewController respondsToSelector:@selector(shouldAutorotateToInterfaceOrientation:)] ? [self.selectedViewController shouldAutorotateToInterfaceOrientation:toInterfaceOrientation] : toInterfaceOrientation == UIInterfaceOrientationPortrait;
}

- (BOOL)shouldAutorotate {
    return [self.selectedViewController respondsToSelector:@selector(shouldAutorotate)] ? [self.selectedViewController shouldAutorotate] : NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [self.selectedViewController respondsToSelector:@selector(supportedInterfaceOrientations)] ? [self.selectedViewController supportedInterfaceOrientations] : UIInterfaceOrientationMaskPortrait;
}

@end
