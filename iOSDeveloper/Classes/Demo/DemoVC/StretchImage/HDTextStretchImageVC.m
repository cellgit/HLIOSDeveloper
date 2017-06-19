//
//  HDTextStretchImageVC.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/16.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HDTextStretchImageVC.h"
#import "HLTextStrechImageView.h"

@interface HDTextStretchImageVC ()

@end

@implementation HDTextStretchImageVC

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
    HLTextStrechImageView *textImageView = [[HLTextStrechImageView alloc]initStrechImageViewWithView:self.view imageName:@"yuanying_dujie_tabie" text:@"这是一个随着文字长度变化而变化的九宫格样式图片"];
    [textImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.height.mas_equalTo(38);
    }];
    
    [self createDismissButton];
}

- (void)createDismissButton {
    CGFloat width = 150;
    CGFloat height = 50;
    UIButton *dismissBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:dismissBtn];
    dismissBtn.frame = CGRectMake(SCREEN_WIDTH/2 - width/2, SCREEN_HEIGHT - 2*(height+50), width, height);
    dismissBtn.backgroundColor = [UIColor colorWithRed:22.0/255.0 green:147.0/255.0 blue:229.0/255.0 alpha:1.0];
    [dismissBtn setTitle:@"DISMISS" forState:UIControlStateNormal];
    dismissBtn.tintColor = [UIColor darkGrayColor];
    dismissBtn.layer.masksToBounds = YES;
    dismissBtn.layer.cornerRadius = height/2;
    dismissBtn.layer.borderWidth = 1;
    dismissBtn.layer.borderColor = [UIColor grayColor].CGColor;
    [dismissBtn addTarget:self action:@selector(dismissVC) forControlEvents:UIControlEventTouchUpInside];
}
- (void)dismissVC {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
