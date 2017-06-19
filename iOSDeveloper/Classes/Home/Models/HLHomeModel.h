//
//  HLHomeModel.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/29.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HLHomeModel : NSObject

@property (nonatomic, copy) NSString *titleName;
@property (nonatomic, copy) NSString *iconName;
// 博客链接
@property (nonatomic, copy) NSString *urlName;

@end

#pragma mark - home主题页模型
@interface HLHomeThemeModel : NSObject

// 主题标题
@property (nonatomic, copy) NSString *titleName;
// 链接
@property (nonatomic, copy) NSString *urlName;
@property (nonatomic, copy) NSString *subtitle;

@end


#pragma mark - 博客
@interface HLBlogModel : NSObject

// 博主
@property (nonatomic, copy) NSString *titleName;
// 博客链接
@property (nonatomic, copy) NSString *urlName;

@end



#pragma mark - 好文章
@interface HLGoodArticleModel : NSObject

// 文章名字
@property (nonatomic, copy) NSString *titleName;
// 文章链接
@property (nonatomic, copy) NSString *urlName;

@end


#pragma mark - Objective-C 知识点
@interface HLOCKnowledgeModel : NSObject

// 知识点标题名
@property (nonatomic, copy) NSString *titleName;
// 知识点链接
@property (nonatomic, copy) NSString *urlName;

@end


#pragma mark - Swift 知识点
@interface HLSwiftKnowledgeModel : NSObject

// 知识点标题名
@property (nonatomic, copy) NSString *titleName;
// 知识点链接
@property (nonatomic, copy) NSString *urlName;

@end

//HLDetailVC

#pragma mark - Swift 知识点
@interface HLDetailVCModel : NSObject

// url
@property (nonatomic, copy) NSString *urlName;
@property (nonatomic, copy) NSString *subtitle;

@end
