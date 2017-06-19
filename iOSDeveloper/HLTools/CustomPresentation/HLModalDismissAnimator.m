//
//  HLModalDismissAnimator.m
//  HLTransition
//
//  Created by zyhy on 2017/5/23.
//  Copyright © 2017年 刘宏立. All rights reserved.
//

#import "HLModalDismissAnimator.h"
#import "HLPresentingViewController.h"

@implementation HLModalDismissAnimator

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    switch (self.dismissStyle) {
        case HLModalDismissStyleFastOut:
            return 0.0;
        case HLModalDismissStyleFadeOut:
            return 0.15;
        case HLModalDismissStyleBounce:
            return 0.2;
        case HLModalDismissStyleContractHorizontal:
            return 0.2;
        case HLModalDismissStyleContractVertical:
            return 0.2;
        case HLModalDismissStyleSlideDown:
            return 0.25;
        case HLModalDismissStyleSlideUp:
            return 0.25;
        case HLModalDismissStyleSlideLeft:
            return 0.2;
        case HLModalDismissStyleSlideRight:
            return 0.2;
    }
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    [self animateWithStyle:self.dismissStyle context:transitionContext];
}

- (void)animateWithStyle:(HLModalDismissStyle)style context:(id<UIViewControllerContextTransitioning>)transitionContext {
    switch (self.dismissStyle) {
        case HLModalDismissStyleFastOut:
            [self fastOutAnimationWithContext:transitionContext];
            break;
        case HLModalDismissStyleFadeOut:
            [self fadeOutAnimationWithContext:transitionContext];
            break;
        case HLModalDismissStyleBounce:
            [self bounceAnimationWithContext:transitionContext];
            break;
        case HLModalDismissStyleContractHorizontal:
            [self contractHorizontalAnimationWithContext:transitionContext];
            break;
        case HLModalDismissStyleContractVertical:
            [self contractVerticalAnimationWithContext:transitionContext];
            break;
        case HLModalDismissStyleSlideDown:
            [self slideDownAnimationWithContext:transitionContext];
            break;
        case HLModalDismissStyleSlideUp:
            [self slideUpAnimationWithContext:transitionContext];
            break;
        case HLModalDismissStyleSlideLeft:
            [self slideLeftAnimationWithContext:transitionContext];
            break;
        case HLModalDismissStyleSlideRight:
            [self slideRightAnimationWithContext:transitionContext];
            break;
    }
}

- (void)fastOutAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         fromVC.view.alpha = 0;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)fadeOutAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         fromVC.view.alpha = 0;
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)bounceAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         fromVC.backgroundView.alpha = 0;
                         fromVC.contentView.transform = CGAffineTransformMakeScale(0.001, 0.001);
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)contractHorizontalAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         fromVC.backgroundView.alpha = 0;
                         fromVC.contentView.transform = CGAffineTransformMakeScale(0.001, 1);
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)contractVerticalAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         fromVC.backgroundView.alpha = 0;
                         fromVC.contentView.transform = CGAffineTransformMakeScale(1, 0.01);
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideDownAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         fromVC.backgroundView.alpha = 0;
                         fromVC.contentView.center = CGPointMake(fromVC.view.center.x, fromVC.view.frame.size.height + fromVC.contentView.frame.size.height/2.0);
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideUpAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         fromVC.backgroundView.alpha = 0;
                         fromVC.contentView.center = CGPointMake(fromVC.view.center.x, -fromVC.contentView.frame.size.height/2.0);
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideLeftAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         fromVC.backgroundView.alpha = 0;
                         fromVC.contentView.center = CGPointMake(-fromVC.contentView.frame.size.width/2.0, fromVC.view.center.y);
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

- (void)slideRightAnimationWithContext:(id<UIViewControllerContextTransitioning>)transitionContext {
    HLPresentingViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration
                     animations:^{
                         fromVC.backgroundView.alpha = 0;
                         fromVC.contentView.center = CGPointMake(fromVC.view.frame.size.width + fromVC.contentView.frame.size.width/2.0, fromVC.view.center.y);
                     }
                     completion:^(BOOL finished) {
                         [transitionContext completeTransition:YES];
                     }];
}

@end
