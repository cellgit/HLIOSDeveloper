//
//  HLPortalsDataManager.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/4.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLPortalsDataManager.h"

@implementation HLPortalsDataManager

#pragma mark - 主页数据
+ (NSArray *)loadPortailsData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"百度", @"iconName":@"blog", @"urlName":@"https://www.baidu.com/"},
              @{@"titleName":@"搜狗", @"iconName":@"blog", @"urlName":@"https://www.sogou.com/"},
              @{@"titleName":@"谷歌", @"iconName":@"blog", @"urlName":@"https://www.google.com/"},
              @{@"titleName":@"必应", @"iconName":@"blog", @"urlName":@"http://cn.bing.com/"},
              @{@"titleName":@"360搜索", @"iconName":@"blog", @"urlName":@"https://www.so.com/"},
              @{@"titleName":@"hao123", @"iconName":@"blog", @"urlName":@"https://www.hao123.com/"},
              @{@"titleName":@"苹果中国", @"iconName":@"blog", @"urlName":@"https://www.apple.com/cn/"},
              @{@"titleName":@"CocoaChina", @"iconName":@"blog", @"urlName":@"http://www.cocoachina.com/"},
              @{@"titleName":@"Code4App", @"iconName":@"blog", @"urlName":@"http://code4app.com/"},
              @{@"titleName":@"简书", @"iconName":@"blog", @"urlName":@"http://www.jianshu.com/"},
              @{@"titleName":@"InfoQ", @"iconName":@"blog", @"urlName":@"http://www.infoq.com/cn/"},
              @{@"titleName":@"Github", @"iconName":@"blog", @"urlName":@"https://github.com/"},
              @{@"titleName":@"维基百科", @"iconName":@"blog", @"urlName":@"https://www.wikipedia.org/"},
              @{@"titleName":@"百度百科", @"iconName":@"blog", @"urlName":@"https://baike.baidu.com/"},
              @{@"titleName":@"蝉游记", @"iconName":@"blog", @"urlName":@"http://chanyouji.com/"},
              
              ];
    
    return array;
}

@end
