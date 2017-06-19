//
//  HLHomeDetailCell.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/30.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLHomeDetailCell.h"

@interface HLHomeDetailCell()

@property (nonatomic, weak) UILabel *subtitleLabel;
@property (nonatomic, copy) NSString *subtitle;

@end

@implementation HLHomeDetailCell

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

- (void)setHomeThemeModel:(HLHomeThemeModel *)homeThemeModel {
    _subtitle = homeThemeModel.subtitle;
    _subtitleLabel.text = _subtitle;
    NSLog(@"_subtitle = %@", _subtitle);
    
}

#pragma mark - 设置界面
- (void)setupUI {
    UILabel *subLabel = [[UILabel alloc]init];
    [self.contentView addSubview:subLabel];
    NSLog(@"_subtitle = %@", _subtitle);
    subLabel.text = _subtitle;
    subLabel.textColor = [UIColor grayColor];
    subLabel.font = [UIFont systemFontOfSize:12];
    
    [subLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(44);
        make.right.equalTo(self.mas_right).offset(- 50);
        make.width.mas_lessThanOrEqualTo(150);
    }];
    
    _subtitleLabel = subLabel;
    
}

@end
