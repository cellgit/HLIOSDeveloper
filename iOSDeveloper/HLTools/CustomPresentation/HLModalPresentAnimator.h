//
//  HLModalPresentAnimator.h
//  HLTransition
//
//  Created by zyhy on 2017/5/23.
//  Copyright © 2017年 刘宏立. All rights reserved.
//

#import <UIKit/UIKit.h>

/** present style */
typedef NS_ENUM(NSInteger, HLModalPresentStyle) {
    HLModalPresentStyleSystem,              // 系统样式
    HLModalPresentStyleFadeIn,              // 渐入
    HLModalPresentStyleBounce,              // 弹出
    HLModalPresentStyleExpandHorizontal,    // 水平展开
    HLModalPresentStyleExpandVertical,      // 垂直展开
    HLModalPresentStyleSlideDown,           // 从上往下划入
    HLModalPresentStyleSlideUp,             // 从下往上划入
    HLModalPresentStyleSlideLeft,           // 从右往左划入
    HLModalPresentStyleSlideRight,          // 从左往右划入
    HLModalPresentStyleSlideTopLeft,        // 左上划出
    HLModalPresentStyleSlideTopRight,       // 右上划出
    HLModalPresentStyleSlideBottomLeft,     // 左下划出
    HLModalPresentStyleSlideBottomRight,    // 右下划出
};

@interface HLModalPresentAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (assign, nonatomic) HLModalPresentStyle presentStyle;

@end
