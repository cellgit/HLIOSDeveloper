//
//  HLDemoDetailCell.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/4.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLDemoDetailCell.h"

@interface HLDemoDetailCell()

@property (nonatomic, weak) UILabel *titleLabel;
@property (nonatomic, copy) NSString *title;

@property (nonatomic, weak) UILabel *subtitleLabel;
@property (nonatomic, copy) NSString *subtitle;

@end

@implementation HLDemoDetailCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupUI];
    }
    
    return self;
}

- (void)setDemoDetailModel:(HLDemoDetailModel *)demoDetailModel {
    _subtitle = demoDetailModel.subtitle;
    _subtitleLabel.text = _subtitle;
    _title = demoDetailModel.titleName;
    _titleLabel.text = _title;
    NSLog(@"_subtitleLabel.text = %@", _subtitleLabel.text);
    NSLog(@"_titleLabel.text = %@", _titleLabel.text);
    
}

#pragma mark - 设置界面
- (void)setupUI {
    
    UILabel *titleLabel = [[UILabel alloc]init];
    [self.contentView addSubview:titleLabel];
    NSLog(@"_title = %@", _title);
    titleLabel.text = _title;
    titleLabel.textColor = [UIColor darkGrayColor];
    titleLabel.font = [UIFont systemFontOfSize:16];
    
    UILabel *subLabel = [[UILabel alloc]init];
    [self.contentView addSubview:subLabel];
    NSLog(@"_subtitle = %@", _subtitle);
    subLabel.text = _subtitle;
    subLabel.textColor = [UIColor grayColor];
    subLabel.font = [UIFont systemFontOfSize:12];
    
    
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(8);
        make.left.equalTo(self.mas_left).offset(15);
        make.right.equalTo(self.mas_right).offset(-20);
    }];
    [subLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(titleLabel.mas_bottom).offset(8);
        make.height.mas_equalTo(20);
        make.right.lessThanOrEqualTo(titleLabel.mas_right);
        make.left.equalTo(titleLabel.mas_left);
    }];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self);
        make.bottom.equalTo(subLabel.mas_bottom).offset(8);
    }];
    
    
    _titleLabel = titleLabel;
    _subtitleLabel = subLabel;
}

@end
