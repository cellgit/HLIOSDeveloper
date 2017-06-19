//
//  HLModalPresentAnimator.m
//  HLTransition
//
//  Created by zyhy on 2017/5/23.
//  Copyright © 2017年 刘宏立. All rights reserved.
//

#import "HLModalPresentAnimator.h"
#import "HLPresentingViewController.h"

#define WIDTH_SCREEN [UIScreen mainScreen].bounds.size.width
#define HEIGHT_SCREEN [UIScreen mainScreen].bounds.size.height


@implementation HLModalPresentAnimator


- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    switch (self.presentStyle) {
        case HLModalPresentStyleSystem:
            return 0.3;
        case HLModalPresentStyleFadeIn:
            return 0.2;
        case HLModalPresentStyleBounce:
            return 0.42;
        case HLModalPresentStyleExpandHorizontal:
            return 0.3;
        case HLModalPresentStyleExpandVertical:
            return 0.3;
        case HLModalPresentStyleSlideDown:
            return 0.5;
        case HLModalPresentStyleSlideUp:
            return 0.5;
        case HLModalPresentStyleSlideLeft:
            return 0.4;
        case HLModalPresentStyleSlideRight:
            return 0.4;
        case HLModalPresentStyleSlideTopLeft:
            return 0.6;
        case HLModalPresentStyleSlideTopRight:
            return 0.6;
        case HLModalPresentStyleSlideBottomLeft:
            return 0.6;
        case HLModalPresentStyleSlideBottomRight:
            return 0.6;
    }
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    [self animateWithStyle:self.presentStyle context:transitionContext];
}

- (void)animateWithStyle:(HLModalPresentStyle)style context:(id<UIViewControllerContextTransitioning>)transitionContext{
    switch (style) {
        case HLModalPresentStyleSystem:
            [self systemAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleFadeIn:
            [self fadeInAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleBounce:
            [self bounceAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleExpandHorizontal:
            [self expandHorizontalAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleExpandVertical:
            [self expandVerticalAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleSlideDown:
            [self slideDownAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleSlideUp:
            [self slideUpAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleSlideLeft:
            [self slideLeftAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleSlideRight:
            [self slideRightAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleSlideTopLeft:
            [self slideTopLeftAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleSlideTopRight:
            [self slideTopRightAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleSlideBottomLeft:
            [self slideBottomLeftAnimationWithContext:transitionContext];
            break;
        case HLModalPresentStyleSlideBottomRight:
            [self slideBottomRightAnimationWithContext:transitionContext];
            break;
    }
}

- (void)systemAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.alpha = 0;
    toVC.contentView.transform = CGAffineTransformMakeScale(1.3, 1.3);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.alpha = 1;
                         toVC.contentView.transform = CGAffineTransformIdentity;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)fadeInAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.view.alpha = 0;
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         toVC.view.alpha = 1;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)bounceAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.alpha = 0;
    toVC.contentView.transform = CGAffineTransformMakeScale(0, 0);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.7
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.alpha = 1;
                         toVC.contentView.transform = CGAffineTransformIdentity;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)expandHorizontalAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.alpha = 0;
    toVC.contentView.transform = CGAffineTransformMakeScale(0, 1);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.75
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.alpha = 1;
                         toVC.contentView.transform = CGAffineTransformIdentity;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)expandVerticalAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.alpha = 0;
    toVC.contentView.transform = CGAffineTransformMakeScale(1, 0);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.75
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.alpha = 1;
                         toVC.contentView.transform = CGAffineTransformIdentity;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideDownAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.center = CGPointMake(toVC.view.center.x, - toVC.contentView.frame.size.height/2.0);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.6
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.center = toVC.view.center;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideUpAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.center = CGPointMake(toVC.view.center.x, toVC.view.frame.size.height + toVC.contentView.frame.size.height/2.0);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.6
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.center = toVC.view.center;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideLeftAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.center = CGPointMake(toVC.view.frame.size.width + toVC.contentView.frame.size.width/2.0, toVC.view.center.y);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.7
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.center = toVC.view.center;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideRightAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.center = CGPointMake(- toVC.contentView.frame.size.width/2.0, toVC.view.center.y);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.7
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.center = toVC.view.center;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideTopLeftAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.center = CGPointMake(- toVC.contentView.frame.size.width/2.0, - toVC.contentView.frame.size.height/2.0);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.6
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.center = toVC.view.center;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideTopRightAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    
    
    toVC.contentView.center = CGPointMake(WIDTH_SCREEN + toVC.contentView.frame.size.width/2.0, - toVC.contentView.frame.size.height/2.0);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.6
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.center = toVC.view.center;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideBottomLeftAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.center = CGPointMake(- toVC.contentView.frame.size.width/2.0, HEIGHT_SCREEN + toVC.contentView.frame.size.height/2.0);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.6
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.center = toVC.view.center;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideBottomRightAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.backgroundView.alpha = 0;
    toVC.contentView.center = CGPointMake(WIDTH_SCREEN + toVC.contentView.frame.size.width/2.0, HEIGHT_SCREEN + toVC.contentView.frame.size.height/2.0);
    
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                          delay:0
         usingSpringWithDamping:0.6
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         toVC.backgroundView.alpha = hl_backgroundAlpha;
                         toVC.contentView.center = toVC.view.center;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

@end
