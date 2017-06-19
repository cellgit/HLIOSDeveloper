//
//  HLModalFadeInVC.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/5.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLModalFadeInVC.h"

@interface HLModalFadeInVC () <UIViewControllerTransitioningDelegate, UIGestureRecognizerDelegate>

@end

@implementation HLModalFadeInVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 设置界面
- (void)setupUI {
    CGFloat width = 200;
    CGFloat height = 200;
    [self.view addSubview:self.contentView];
    self.contentView.frame = CGRectMake(self.view.center.x - width/2, self.view.center.y - height/2, width, height);
    
    CGFloat btnWidth = 100;
    CGFloat btnHeight = 62;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.contentView addSubview:btn];
    btn.frame = CGRectMake((width - btnWidth)/2, (height - btnHeight)/2, 100, 62);
    btn.backgroundColor = [UIColor colorWithRed:10.0/255.0 green:120.0/255.0 blue:206.0/255.0 alpha:1.0];
    [btn setTitle:@"DismissVC" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [btn addTarget:self action:@selector(DismissFromVC) forControlEvents:UIControlEventTouchUpInside];
    
//    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissVCTapBackgroundView)];
//    [self.view addGestureRecognizer:tapGes];
//    tapGes.delegate = self;
}
- (void)modalToVC {
    HLPresentingViewController *vc = [[HLPresentingViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark - UIViewControllerTransitioningDelegate
// 返回Present动画
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    HLModalPresentAnimator *animator = [[HLModalPresentAnimator alloc] init];
    animator.presentStyle = HLModalPresentStyleFadeIn;    // 改变动画展现样式
    return animator;
}

// 返回Dismiss动画
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    HLModalDismissAnimator *animator = [[HLModalDismissAnimator alloc] init];
    animator.dismissStyle = HLModalDismissStyleFadeOut;          // 改变动画撤离样式
    return animator;
}

- (void)DismissFromVC {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)dismissVCTapBackgroundView {
    [self dismissViewControllerAnimated:YES completion:nil];
}

//// 判断手势范围的代理方法,保证不将手势添加到_containerView
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
//    if ([touch.view isDescendantOfView:self.contentView]) {
//        return NO;
//    }
//    return YES;
//}


@end
