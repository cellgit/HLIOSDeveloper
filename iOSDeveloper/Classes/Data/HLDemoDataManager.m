//
//  HLDemoDataManager.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/4.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLDemoDataManager.h"

@implementation HLDemoDataManager

#pragma mark - 主页数据
+ (NSArray *)loadDemoData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"Modal", @"iconName":@"blog"},
              @{@"titleName":@"ImagePicker", @"iconName":@"blog"},
              @{@"titleName":@"StretchImage", @"iconName":@"blog"},
              
              ];
    
    return array;
}

//****************************************************************************************//

#pragma mark - Modal 自定义转场
+ (NSArray *)loadCustomPresentData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"中间弹出", @"subtitle":@"HLModalPresentStyleBounce"},
              @{@"titleName":@"底部划出", @"subtitle":@"HLModalDismissStyleSlideUp"},
              @{@"titleName":@"渐入渐出", @"subtitle":@"HLModalPresentStyleFadeIn"},
              
              ];
    
    return array;
}

#pragma mark - pickerController 图片选择器
+ (NSArray *)loadChoseImagePickerData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"选取图片", @"subtitle":@"HLImagePickerController"},
              
              ];
    
    return array;
}

#pragma mark - textStretchImage 九宫格实现图片随文字变化
+ (NSArray *)loadTextStretchImageData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"文字拉伸九宫格", @"subtitle":@"HLTextStrechImageView"},
              
              ];
    
    return array;
}


@end
