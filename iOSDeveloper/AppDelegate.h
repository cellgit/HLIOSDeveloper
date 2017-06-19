//
//  AppDelegate.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/28.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// 是否允许横屏的标记
@property (nonatomic,assign)BOOL allowRotation;

@end

