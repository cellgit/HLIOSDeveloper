//
//  HLPresentingViewController.m
//  HLTransition
//
//  Created by zyhy on 2017/5/23.
//  Copyright © 2017年 刘宏立. All rights reserved.
//

#import "HLPresentingViewController.h"
#import "HLModalPresentAnimator.h"
#import "HLModalDismissAnimator.h"



@interface HLPresentingViewController () <UIViewControllerTransitioningDelegate, UIGestureRecognizerDelegate>

@end

@implementation HLPresentingViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.transitioningDelegate = self;
        self.modalPresentationStyle = UIModalPresentationCustom;
        
        _backgroundView = [[UIView alloc]init];
        _backgroundView.translatesAutoresizingMaskIntoConstraints = NO;
        _backgroundView.backgroundColor = [UIColor blackColor];
        _backgroundView.alpha = 0.4;
        
        _contentView = [[UIView alloc]init];
        _contentView.backgroundColor = [UIColor cyanColor];
        _contentView.clipsToBounds = YES;
        _contentView.layer.cornerRadius = 5;
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_backgroundView];
    _backgroundView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    
}


@end
