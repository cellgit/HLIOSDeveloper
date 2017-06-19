//
//  HLDemoModel.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/4.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HLDemoModel : NSObject

@property (nonatomic, copy) NSString *titleName;
@property (nonatomic, copy) NSString *iconName;

@end


#pragma mark - Demo详情页模型
@interface HLDemoDetailModel : NSObject

// 主题标题
@property (nonatomic, copy) NSString *titleName;
@property (nonatomic, copy) NSString *subtitle;

@end
