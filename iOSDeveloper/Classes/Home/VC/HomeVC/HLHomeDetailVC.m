//
//  HLHomeDetailVC.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/29.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLHomeDetailVC.h"
#import "HLDetailVC.h"
#import "HLHomeDataManager.h"
#import "HLHomeDetailCell.h"

// tableView 列表的标识符
static NSString *cellId = @"cellId";


@interface HLHomeDetailVC () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, copy) NSString *titleName;


// 执行的数组
@property (nonatomic, strong) NSMutableArray *ArrayM;
// 从 home 管理器获取的数据
@property (nonatomic, strong) NSArray *homeThemeList;

// 标题的专有数组
@property (nonatomic, strong) NSMutableArray *titleNameArrayM;
// 链接的专有数组
@property (nonatomic, strong) NSMutableArray *URLArrayM;
//subtitle
@property (nonatomic, strong) NSMutableArray *subtitleArrayM;

@end

@implementation HLHomeDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"_titleName === %@", _titleName);
    _titleNameArrayM = [NSMutableArray array];
    _URLArrayM = [NSMutableArray array];
    _subtitleArrayM = [NSMutableArray array];
    [self loadData];
    [self setupUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 重写模型
- (void)setHomeModel:(HLHomeModel *)homeModel {
    NSLog(@"homeModel.titleName = %@", homeModel.titleName);
    _titleName = homeModel.titleName;
    
    
}

- (void)encodeHomeThemeData {
    _ArrayM = [NSMutableArray array];
    for (NSDictionary *dict in _homeThemeList) {
        HLHomeThemeModel *homeThemeModel = [HLHomeThemeModel yy_modelWithDictionary:dict];
        [_ArrayM addObject:homeThemeModel];
        [_titleNameArrayM addObject:homeThemeModel.titleName];
        [_URLArrayM addObject:homeThemeModel.urlName];
        if (homeThemeModel.subtitle != nil) {
            [_subtitleArrayM addObject:homeThemeModel.subtitle];
        }
        
    }
}

- (void)loadData {
    if ([_titleName isEqualToString:@"博客"]) {
        _homeThemeList = [HLHomeDataManager loadBlogData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"文章"]) {
        _homeThemeList = [HLHomeDataManager loadGoodArticleData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"Objective-C"]) {
        _homeThemeList = [HLHomeDataManager loadOCKnowledgeData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"Swift"]) {
        _homeThemeList = [HLHomeDataManager loadSwiftKnowledgeData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"Swift 服务器"]) {
        _homeThemeList = [HLHomeDataManager loadServerSideSwiftData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"开发者社区"]) {
        _homeThemeList = [HLHomeDataManager loadDeveloperCommunityData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"Xcode-Unity"]) {
        _homeThemeList = [HLHomeDataManager loadXcodeUnityData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"开发的故事"]) {
        _homeThemeList = [HLHomeDataManager loadDeveloperStoryData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"WWDC"]) {
        _homeThemeList = [HLHomeDataManager loadWWDCData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"WWDC视频"]) {
        _homeThemeList = [HLHomeDataManager loadWWDCVideoData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"游戏"]) {
        _homeThemeList = [HLHomeDataManager loadGameData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"我是程序员"]) {
        _homeThemeList = [HLHomeDataManager loadDeveloperData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"学生时代"]) {
        _homeThemeList = [HLHomeDataManager loadDeveloperStudentTimeData];
        [self encodeHomeThemeData];
    }
    else if ([_titleName isEqualToString:@"我是果粉"]) {
        _homeThemeList = [HLHomeDataManager loadAppleProductFanData];
        [self encodeHomeThemeData];
    }
}


#pragma mark - 设置界面
- (void)setupUI {
    
    UITableView *tv = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    [self.view addSubview:tv];
    
    [tv registerClass:[HLHomeDetailCell class] forCellReuseIdentifier:cellId];
    tv.rowHeight = 55;
    tv.tableFooterView = [[UIView alloc]init];  // 去除多余的cell单元格的separateLine分割线
    tv.indicatorStyle = UIScrollViewIndicatorStyleBlack;
    tv.dataSource = self;
    tv.delegate = self;
    [tv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"%zd", _ArrayM.count);
    return _ArrayM.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    HLHomeThemeModel *homeThemeModel = [[HLHomeThemeModel alloc]init];
    homeThemeModel = _ArrayM[indexPath.row];
    homeThemeModel.titleName = _titleNameArrayM[indexPath.row];
    homeThemeModel.subtitle = _subtitleArrayM[indexPath.row];
    NSLog(@"_subtitleArrayM[indexPath.row] = %@", _subtitleArrayM[indexPath.row]);
    NSLog(@"omeThemeModel.subtitle = %@", homeThemeModel.subtitle);
    
    HLHomeDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.homeThemeModel = homeThemeModel;
    
    cell.textLabel.text = _titleNameArrayM[indexPath.row];
    NSLog(@"%@", _titleNameArrayM[indexPath.row]);
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}


#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
    HLDetailVC *vc = [[HLDetailVC alloc]init];
    HLDetailVCModel *model = [[HLDetailVCModel alloc]init];
    model.urlName = _URLArrayM[indexPath.row];
    model.subtitle = _subtitleArrayM[indexPath.row];
    vc.detailModel = model;
    
    
    NSLog(@"vc.detailModel.urlName = %@", vc.detailModel.urlName);
    vc.hidesBottomBarWhenPushed = YES; // push 时隐藏底部tabBar
    [self.navigationController pushViewController:vc animated:YES];
}



@end
