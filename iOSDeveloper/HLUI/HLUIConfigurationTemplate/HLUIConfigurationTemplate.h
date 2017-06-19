//
//  HLUIConfigurationTemplate.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/19.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  HLUIConfigurationTemplaten 源于 QMUIConfigurationTemplaten;
 *  HLUIConfigurationTemplaten 是一份配置表，用于配合 QMUIKit 来管理整个 App 的全局样式，使用方式如下：
 *  1. 在 HLUI 项目代码的文件夹里找到 HLUIConfigurationTemplate 目录，把里面所有文件复制到自己项目里。
 *  2. 在自己项目的 AppDelegate 里 #import "HLUIConfigurationTemplate.h"，然后在 application:didFinishLaunchingWithOptions: 里调用 [HLUIConfigurationTemplate setupConfigurationTemplate]，即可让配置表生效。
 */

@interface HLUIConfigurationTemplate : NSObject

+ (void)setupConfigurationTemplate;


@end
