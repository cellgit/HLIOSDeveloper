//
//  HLTextStrechImageView.m
//  HLTextStrechImage
//
//  Created by zyhy on 2017/6/13.
//  Copyright © 2017年 刘宏立. All rights reserved.
//

#import "HLTextStrechImageView.h"
//#import "Masonry.h"

@interface HLTextStrechImageView ()

@property (nonatomic, weak) HLTextStrechImageView *imageView;
@property (nonatomic, weak) UIView *view;

@end

@implementation HLTextStrechImageView

- (instancetype)initStrechImageViewWithView:(UIView *)view imageName:(NSString *)imageName text:(NSString *)text{
    self.view = view;
    [self createStrechImageViewWithImageName:imageName text:text];
    return _imageView;
}


#pragma mark - 设置界面
- (void)createStrechImageViewWithImageName:(NSString *)imageName text:(NSString *)text {
    UIImage *titleImage = [UIImage imageNamed:imageName];
    UIEdgeInsets ivInsets = UIEdgeInsetsMake(titleImage.size.height/2 - 1, titleImage.size.width/2 - 1, titleImage.size.height/2 + 1, titleImage.size.width/2 + 1);
    UIImage *stretchImage = [titleImage resizableImageWithCapInsets:ivInsets resizingMode:UIImageResizingModeStretch];
    HLTextStrechImageView *iv = [[HLTextStrechImageView alloc]initWithImage:stretchImage];
    [self.view addSubview:iv];
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    [iv addSubview:label];
    label.font = [UIFont systemFontOfSize:13];
    label.textColor = [UIColor darkGrayColor];
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(iv.mas_left).offset(15);
        make.right.equalTo(iv.mas_right).offset(-15);
        make.centerY.mas_equalTo(iv.mas_centerY);
    }];
    
    _imageView = iv;
}



@end
