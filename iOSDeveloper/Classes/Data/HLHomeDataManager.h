//
//  HLHomeDataManager.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/29.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HLHomeDataManager : NSObject

#pragma mark - 主页数据
+ (NSArray *)loadHomeData;

#pragma mark - 博客
+ (NSArray *)loadBlogData;

#pragma mark - 好文章
+ (NSArray *)loadGoodArticleData;

#pragma mark - OC 知识点
+ (NSArray *)loadOCKnowledgeData;

#pragma mark - Swift 知识点
+ (NSArray *)loadSwiftKnowledgeData;

#pragma mark - Swift 服务器
+ (NSArray *)loadServerSideSwiftData;

#pragma mark - 开发者社区
+ (NSArray *)loadDeveloperCommunityData;

#pragma mark - Xcode-Unity
+ (NSArray *)loadXcodeUnityData;

#pragma mark - 开发者的故事 Developer Story
+ (NSArray *)loadDeveloperStoryData;

#pragma mark - 开发者大会 - WWDC
+ (NSArray *)loadWWDCData;

#pragma mark - WWDC 视频
+ (NSArray *)loadWWDCVideoData;

#pragma mark - 游戏
+ (NSArray *)loadGameData;

#pragma mark - 我是程序员
+ (NSArray *)loadDeveloperData;

#pragma mark - 开发者的学生时代
+ (NSArray *)loadDeveloperStudentTimeData;

#pragma mark - 我是果粉
+ (NSArray *)loadAppleProductFanData;

@end
