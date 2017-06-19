//
//  HLDemoCollectionCell.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/4.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLDemoCollectionCell.h"

@interface HLDemoCollectionCell()

@property (nonatomic, weak) UIView *view;
@property (nonatomic, weak) UILabel *titleLabel;

@end

@implementation HLDemoCollectionCell


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}


- (void)setDemoModel:(HLDemoModel *)demoModel {
    _titleLabel.text = demoModel.titleName;
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:demoModel.iconName]];
    [_view addSubview:imageView];
    
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(_view.mas_centerX);
        make.top.equalTo(_view.mas_top).offset(10);
        make.width.height.mas_equalTo(50);
    }];
}

#pragma mark - 设置界面
- (void)setupUI {
    UIView *view = [[UIView alloc]init];
    [self.contentView addSubview:view];
    view.backgroundColor = [UIColor colorWithRed:227.0/255.0 green:227.0/255.0 blue:227.0/255.0 alpha:1.0];
    
    UILabel *titleLabel = [[UILabel alloc]init];
    [view addSubview:titleLabel];
    titleLabel.text = @"";
    titleLabel.font = [UIFont systemFontOfSize:15];
    titleLabel.textColor = [UIColor darkGrayColor];
    NSLog(@"homeModel.titleName:%@", _demoModel.titleName);
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(view.mas_centerX);
        make.bottom.equalTo(view.mas_bottom).offset(- 10);
    }];
    
    _titleLabel = titleLabel;
    _view = view;
}

@end
