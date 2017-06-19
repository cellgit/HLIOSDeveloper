//
//  HLDemoDataManager.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/4.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HLDemoDataManager : NSObject

#pragma mark - 门户网站列表数据
+ (NSArray *)loadDemoData;

#pragma mark - Modal 自定义转场
+ (NSArray *)loadCustomPresentData;

#pragma mark - pickerController 图片选择器
+ (NSArray *)loadChoseImagePickerData;

#pragma mark - textStretchImage 九宫格实现图片随文字变化
+ (NSArray *)loadTextStretchImageData;

@end
