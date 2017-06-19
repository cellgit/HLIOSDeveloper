//
//  HLHomeDataManager.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/29.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLHomeDataManager.h"

@implementation HLHomeDataManager

#pragma mark - 主页数据
+ (NSArray *)loadHomeData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"博客", @"iconName":@"blog"},
              @{@"titleName":@"文章", @"iconName":@"article"},
              @{@"titleName":@"Objective-C", @"iconName":@"Objective-C"},
              @{@"titleName":@"Swift", @"iconName":@"swift"},
              @{@"titleName":@"Swift 服务器", @"iconName":@"sevicer"},
              @{@"titleName":@"开发者社区", @"iconName":@"developerCommunity"},
              @{@"titleName":@"Xcode-Unity", @"iconName":@"unity"},
              @{@"titleName":@"开发的故事", @"iconName":@"swift"},
              @{@"titleName":@"WWDC", @"iconName":@"swift"},
              @{@"titleName":@"游戏", @"iconName":@"unity"},
              @{@"titleName":@"API Reference", @"iconName":@"swift"},
              @{@"titleName":@"WWDC视频", @"iconName":@"swift"},
              @{@"titleName":@"我是程序员", @"iconName":@"swift"},
              @{@"titleName":@"学生时代", @"iconName":@"swift"},
              @{@"titleName":@"我是果粉", @"iconName":@"swift"},
              
              ];
    
    return array;
}


#pragma mark - 博客
+ (NSArray *)loadBlogData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"王    巍", @"subtitle":@"上善若水,人淡如菊", @"urlName":@"https://onevcat.com/#blog"},
              @{@"titleName":@"唐    巧", @"subtitle":@"记录学习的点点滴滴", @"urlName":@"http://blog.devtang.com/archives/"},
              @{@"titleName":@"郭曜源", @"subtitle":@"一只魔法师的工坊", @"urlName":@"http://blog.ibireme.com/archive/"},
              @{@"titleName":@"刘宏立", @"subtitle":@"一条路海角天涯", @"urlName":@"http://cellgit.com/archives/"},
              @{@"titleName":@"NSHipster", @"subtitle":@"关注被忽略的特性", @"urlName":@"http://nshipster.cn/"},
              @{@"titleName":@"孙    源", @"subtitle":@"一条路海角天涯", @"urlName":@"http://blog.sunnyxx.com/"},
              @{@"titleName":@"webfrogs", @"subtitle":@"代码洁癖症患者", @"urlName":@"https://blog.nswebfrog.com/"},
              @{@"titleName":@"燕泽堃", @"subtitle":@"土土哥", @"urlName":@"http://tutuge.me/archives/"},
              @{@"titleName":@"limboy", @"subtitle":@"一条路海角天涯", @"urlName":@"http://limboy.me/"},
              @{@"titleName":@"bang", @"subtitle":@"一条路海角天涯", @"urlName":@"http://blog.cnbang.net/archives/"},
              @{@"titleName":@"破船之家", @"subtitle":@"漫随天外云卷云舒", @"urlName":@"http://beyondvincent.com/archives/"},
              @{@"titleName":@"向晨宇", @"subtitle":@"偏执到癫狂,才能达到顶峰", @"urlName":@"http://www.iosxxx.com/archives/"},
              @{@"titleName":@"周楷雯", @"subtitle":@"Thoughts,stories,ideas", @"urlName":@"http://zhowkev.in/"},
              @{@"titleName":@"阿    毛", @"subtitle":@"喜欢造各种小轮子", @"urlName":@"http://xiangwangfeng.com/"},
              @{@"titleName":@"图拉鼎", @"subtitle":@"独立开发者", @"urlName":@"https://imtx.me/"},
              @{@"titleName":@"萧宸宇", @"subtitle":@"拯救世界的神，征服世界的魔", @"urlName":@"http://www.iiiyu.com/archives/"},
              @{@"titleName":@"码农人生", @"subtitle":@"暴雪粉，Falcom粉", @"urlName":@"http://msching.github.io/blog/archives/"},
              @{@"titleName":@"汪    海", @"subtitle":@"从明天起，做一个幸福的人", @"urlName":@"https://blog.callmewhy.com/archives/"},
              @{@"titleName":@"庞海礁", @"subtitle":@"土土哥", @"urlName":@"http://www.olinone.com/"},
              @{@"titleName":@"Casa Taloyum", @"subtitle":@"drummer,guitar,coder", @"urlName":@"https://casatwy.com/archives.html"},
              @{@"titleName":@"老    谭", @"subtitle":@"程序的世界让我着迷", @"urlName":@"http://www.tanhao.me/archives/"},
              @{@"titleName":@"雷纯锋", @"subtitle":@"不忘初心，方得始终", @"urlName":@"http://blog.leichunfeng.com/blog/archives/"},//http://fengjian0106.github.io/archives/
              @{@"titleName":@"FengJian", @"subtitle":@"QQ邮箱团队iOS开发", @"urlName":@"http://fengjian0106.github.io/archives/"},
              
              
              
              ];
    
    return array;
}

#pragma mark - 好文章
+ (NSArray *)loadGoodArticleData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"如何打造一个让人愉快的框架", @"subtitle":@"作者:王巍", @"urlName":@"https://onevcat.com/2016/01/create-framework/"},
              @{@"titleName":@"更轻量的 View Controllers", @"subtitle":@"ObjC中国", @"urlName":@"https://objccn.io/issue-1-1/"},
              @{@"titleName":@"整洁的 Table View 代码", @"subtitle":@"ObjC中国", @"urlName":@"https://objccn.io/issue-1-2/"},
              @{@"titleName":@"测试 View Controllers", @"subtitle":@"ObjC中国", @"urlName":@"https://objccn.io/issue-1-3/"},
              @{@"titleName":@"View Controller容器", @"subtitle":@"ObjC中国", @"urlName":@"https://objccn.io/issue-1-4/"},
              @{@"titleName":@"KVC和KVO", @"subtitle":@"ObjC中国", @"urlName":@"https://objccn.io/issue-7-3/"},
              @{@"titleName":@"iOS视图控制器转场详解", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2016/03/13/iOS-transition-guide/"},
              @{@"titleName":@"被误解的MVC和被神化的MVVM", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2015/11/02/mvc-and-mvvm/"},
              @{@"titleName":@"使用蒲公英来做iOS测试应用的分发", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2015/01/22/pgy-usage-guide/"},
              @{@"titleName":@"iOS开发如何提高", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2014/07/27/ios-levelup-tips/"},
              @{@"titleName":@"被误解的MVC和被神化的MVVM", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2015/11/02/mvc-and-mvvm/"},
              @{@"titleName":@"使用蒲公英来做iOS测试应用的分发", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2015/01/22/pgy-usage-guide/"},
              @{@"titleName":@"关于iOS10中ATS的问题", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2016/06/ios-10-ats/"},
              @{@"titleName":@"开发者所需要知道的iOS10 SDK新特性", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2016/06/ios-10-sdk/"},
              @{@"titleName":@"Xcode7 UI测试初窥", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2015/09/ui-testing/"},
              @{@"titleName":@"30分钟开发一个简单的watchOS2 app", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2015/08/watchos2/"},
              @{@"titleName":@"iOS9多任务分屏要点", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2015/06/multitasking/"},
              @{@"titleName":@"Apple WatchKit初探", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2014/11/watch-kit/"},
              @{@"titleName":@"30分钟开发一个简单的watchOS2 app", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2015/08/watchos2/"},
              @{@"titleName":@"iOS通知中心扩展制作入门", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2014/08/notification-today-widget/"},
              
              
              
              
              
              
              
              
              ];
    
    return array;
}

#pragma mark - OC 知识点
+ (NSArray *)loadOCKnowledgeData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"OC1的文章", @"subtitle":@"", @"urlName":@"http://www.cellgit.com"},
              @{@"titleName":@"OC2的文章", @"subtitle":@"", @"urlName":@"http://www.cellgit.com"},
              @{@"titleName":@"OC3的文章", @"subtitle":@"", @"urlName":@"http://www.cellgit.com"},
              @{@"titleName":@"OC4的文章", @"subtitle":@"", @"urlName":@"http://www.cellgit.com"}
              ];
    
    return array;
}

#pragma mark - Swift 知识点
+ (NSArray *)loadSwiftKnowledgeData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"Swift 并行编程现状和展望", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2016/12/concurrency/"},
              @{@"titleName":@"Swift中的指针使用", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2015/01/swift-pointer/"},
              @{@"titleName":@"Swift2 throws全解析-从原理到实践", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2016/03/swift-throws/"},
              @{@"titleName":@"Swift性能探索和优化分析", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2016/02/swift-performance/"},
              @{@"titleName":@"swift3的文章", @"subtitle":@"", @"urlName":@"http://www.cellgit.com"},
              @{@"titleName":@"swift4的文章", @"subtitle":@"", @"urlName":@"http://www.cellgit.com"}
              ];
    
    return array;
}

#pragma mark - Swift 服务器
+ (NSArray *)loadServerSideSwiftData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"Perfect", @"subtitle":@"中文详情", @"urlName":@"https://perfect.org/docs/index_zh_CN.html"},
              
              ];
    
    return array;
}

#pragma mark - 开发者社区
+ (NSArray *)loadDeveloperCommunityData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"ObjC 中国", @"subtitle":@"", @"urlName":@"https://objccn.io/issues/"}
              ];
    
    return array;
}

#pragma mark - Xcode-Unity
+ (NSArray *)loadXcodeUnityData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"iOS工程接入Unity工程", @"subtitle":@"", @"urlName":@"http://www.jianshu.com/p/51b7b4bb6748"},
              @{@"titleName":@"Unity3D Shader入门指南（一）", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2013/07/shader-tutorial-1/"},
              @{@"titleName":@"Unity3D Shader入门指南（二）", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2013/08/shader-tutorial-2/"},
              @{@"titleName":@"Unity3D暂停时动画及粒子效果实现", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2013/01/do_not_pause_me/"},
              @{@"titleName":@"Unity 3D中的内存管理", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2012/11/memory-in-unity3d/"},
              @{@"titleName":@"再见,祖国", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2012/09/see-you-my-country/"},
              @{@"titleName":@"学生时代的终焉", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2012/08/not-a-studen/"},
              @{@"titleName":@"WWebKit", @"subtitle":@"苹果开发者大会", @"urlName":@"http://nshipster.cn/wkwebkit/"},
              @{@"titleName":@"WWebKit", @"subtitle":@"苹果开发者大会", @"urlName":@"http://nshipster.cn/wkwebkit/"},
              
              ];
    
    return array;
}

#pragma mark - 开发者的故事 Developer Story
+ (NSArray *)loadDeveloperStoryData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"偷得浮生半月闲", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2014/09/bye-kayac/"},
              @{@"titleName":@"硅谷之行", @"subtitle":@"唐巧-猿题库", @"urlName":@"http://blog.devtang.com/2017/03/26/silicon-valley-3/"},
              @{@"titleName":@"赴日半年的一些杂感", @"subtitle":@"王巍:2013-04-01", @"urlName":@"https://onevcat.com/2013/04/half-year-in-japan/"},
              @{@"titleName":@"独立思考的重要性", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2017/02/19/the-important-of-indepentent-thinking/"},
              @{@"titleName":@"我们身边的技术人生-《技术人创业攻略》", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2016/09/01/dev-level-up-stories/"},
              @{@"titleName":@"我与 InfoQ 的故事", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2016/06/26/my-story-about-infoq/"},
              @{@"titleName":@"济州岛旅游见闻", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2016/05/08/jeju-island-tour/"},
              @{@"titleName":@"专访YYKit作者 ibireme:开源大牛是怎样炼成的", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2015/11/26/yykit-auther-interview/"},
              ];
    
    return array;
}

#pragma mark - WWDC
+ (NSArray *)loadWWDCData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"WWebKit", @"subtitle":@"苹果开发者大会", @"urlName":@"http://nshipster.cn/wkwebkit/"},
              @{@"titleName":@"初次参加WWDC开发者攻略", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2016/04/first-wwdc/"},
              @{@"titleName":@"WWebKit", @"subtitle":@"苹果开发者大会", @"urlName":@"http://nshipster.cn/wkwebkit/"},
              @{@"titleName":@"WWebKit", @"subtitle":@"苹果开发者大会", @"urlName":@"http://nshipster.cn/wkwebkit/"},
              
              
              
              
              
              
              ];
    
    return array;
}

#pragma mark - WWDC 视频
+ (NSArray *)loadWWDCVideoData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"WWDC 全部视频", @"subtitle":@"苹果开发者大会视频", @"urlName":@"https://developer.apple.com/videos/"},
              @{@"titleName":@"Apple Pay on the Web", @"subtitle":@"苹果开发者大会视频", @"urlName":@"https://developer.apple.com/videos/play/wwdc2016/703/"},
              
              ];
    
    return array;
}

#pragma mark - 游戏
+ (NSArray *)loadGameData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"卷首语", @"subtitle":@"译者:杨萧玉-ObjC中国", @"urlName":@"https://objccn.io/issue-18-0/"},
              @{@"titleName":@"设计优雅的移动游戏", @"subtitle":@"译者:吴迪-ObjC中国", @"urlName":@"https://objccn.io/issue-18-1/"},
              @{@"titleName":@"Metal", @"subtitle":@"译者:migrant-ObjC中国", @"urlName":@"https://objccn.io/issue-18-2/"},
              @{@"titleName":@"Scene Kit", @"subtitle":@"译者:孙源-ObjC中国", @"urlName":@"https://objccn.io/issue-18-3/"},
              @{@"titleName":@"游戏中的多点互联", @"subtitle":@"译者:汪海洋-ObjC中国", @"urlName":@"https://objccn.io/issue-18-4/"},
              @{@"titleName":@"虚拟音域-声音设计的艺术", @"subtitle":@"译者:树叶-ObjC中国", @"urlName":@"https://objccn.io/issue-18-5/"},
              @{@"titleName":@"UIKit Dynamics入门", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2013/06/uikit-dynamics-started/"},
              @{@"titleName":@"SpriteKit入门和iOS游戏开发指南", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2013/06/sprite-kit-start/"},
              @{@"titleName":@"虚拟音域-声音设计的艺术", @"subtitle":@"译者:树叶-ObjC中国", @"urlName":@"https://objccn.io/issue-18-5/"},
              
              
              
              ];
    
    return array;
}
//https://onevcat.com/2012/05/tsinghua-photos/


#pragma mark - 我是程序员
+ (NSArray *)loadDeveloperData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"谈谈程序员的软技能", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2016/08/22/soft-skills/"},
              @{@"titleName":@"谈谈 T 型人才", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2016/08/13/talk-about-full-stack/"},
              @{@"titleName":@"难得的休假", @"subtitle":@"王巍", @"urlName":@"http://blog.devtang.com/2016/04/19/control-yourself/"},
              @{@"titleName":@"求职季", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2011/10/zhaopin/"},
              @{@"titleName":@"写给那些傻傻的,想做服务器开发的应届生", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2015/10/07/why-fresh-wants-to-do-server-dev/"},
              
              ];
    
    return array;
}


#pragma mark - 开发者的学生时代
+ (NSArray *)loadDeveloperStudentTimeData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"学生时代的终焉", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2012/08/not-a-studen/"},
              @{@"titleName":@"水清木华", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2012/05/tsinghua-photos/"},
              @{@"titleName":@"难得的休假", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2011/11/rest/"},
              @{@"titleName":@"求职季", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2011/10/zhaopin/"},
              ];
    
    return array;
}

#pragma mark - 我是果粉
+ (NSArray *)loadAppleProductFanData {
    NSArray *array = [NSArray array];
    array = @[@{@"titleName":@"Apple Watch使用体验", @"subtitle":@"唐巧", @"urlName":@"http://blog.devtang.com/2015/06/28/apple-watch-usage-exp/"},
              @{@"titleName":@"水清木华", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2012/05/tsinghua-photos/"},
              @{@"titleName":@"难得的休假", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2011/11/rest/"},
              @{@"titleName":@"求职季", @"subtitle":@"王巍", @"urlName":@"https://onevcat.com/2011/10/zhaopin/"},
              ];
    
    return array;
}

//http://blog.devtang.com/page/6/

@end
