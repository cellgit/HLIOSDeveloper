//
//  HLPresentingViewController.h
//  HLTransition
//
//  Created by zyhy on 2017/5/23.
//  Copyright © 2017年 刘宏立. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLModalPresentAnimator.h"
#import "HLModalDismissAnimator.h"

// 灰色背景透明度
static const CGFloat hl_backgroundAlpha = 0.4;

@interface HLPresentingViewController : UIViewController

// 背景视图
@property (nonatomic, strong)UIView *backgroundView;
// 弹出的内容视图
@property (nonatomic, strong)UIView *contentView;
// present 转场风格
@property (nonatomic, assign)HLModalPresentStyle presentStyle;
// dismiss 转场风格
@property (nonatomic, assign)HLModalDismissStyle dismissStyle;

@end
