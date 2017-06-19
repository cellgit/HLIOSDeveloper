//
//  HLModalDismissAnimator.h
//  HLTransition
//
//  Created by zyhy on 2017/5/23.
//  Copyright © 2017年 刘宏立. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLModalDismissAnimator.h"


/** dismiss style */
typedef NS_ENUM(NSInteger, HLModalDismissStyle) {
    HLModalDismissStyleFastOut,             // 快出
    HLModalDismissStyleFadeOut,             // 渐出
    HLModalDismissStyleBounce,              // 往里弹出
    HLModalDismissStyleContractHorizontal,  // 水平收起
    HLModalDismissStyleContractVertical,    // 垂直收起
    HLModalDismissStyleSlideDown,           // 向下划出
    HLModalDismissStyleSlideUp,             // 向上划出
    HLModalDismissStyleSlideLeft,           // 向左划出
    HLModalDismissStyleSlideRight           // 向右划出
    
};

@interface HLModalDismissAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (assign, nonatomic) HLModalDismissStyle dismissStyle;

@end
