//
//  HLTextStrechImageView.h
//  HLTextStrechImage
//
//  Created by zyhy on 2017/6/13.
//  Copyright © 2017年 刘宏立. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "HDTextStretchImageVC.h"

@interface HLTextStrechImageView : UIImageView

/**
 这是一个随着文字长度变化而变化的九宫格样式图片

 @param view 拉伸的imageView的父视图
 @param imageName 图片名字
 @param text 需要显示的文字
 */
- (instancetype)initStrechImageViewWithView:(UIView *)view imageName:(NSString *)imageName text:(NSString *)text;

@end
