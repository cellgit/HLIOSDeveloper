//
//  HLDemoDetailVC.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/4.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLDemoDetailVC.h"
#import "HLDemoDataManager.h"
#import "HLDemoDetailCell.h"
#import "HLDemoCustomTransitionVC.h"
#import "HLModalFromBottomVC.h"
#import "HLModalFadeInVC.h"
#import "HDImagePickerController.h"
#import "HDTextStretchImageVC.h"


// tableView 列表的标识符
static NSString *cellId = @"cellId";

@interface HLDemoDetailVC () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, copy) NSString *titleName;

@property (nonatomic, copy) NSString *themeTitle;
@property (nonatomic, copy) NSString *themeSubtitle;

// 执行的数组
@property (nonatomic, strong) NSMutableArray *ArrayM;
// 从 demo 管理器获取的 demoDetail 数据
@property (nonatomic, strong) NSArray *demoDetailList;
// 标题的专有数组
@property (nonatomic, strong) NSMutableArray *titleNameArrayM;
//subtitle
@property (nonatomic, strong) NSMutableArray *subtitleArrayM;

@end

@implementation HLDemoDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initArray];
    [self loadData];
    [self setupUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initArray {
    NSLog(@"_titleName === %@", _titleName);
    _titleNameArrayM = [NSMutableArray array];
    _subtitleArrayM = [NSMutableArray array];
}

- (void)setDemoModel:(HLDemoModel *)demoModel {
    _titleName = demoModel.titleName;
    NSLog(@"_titleName = %@", _titleName);
}

- (void)setDemoDetailModel:(HLDemoDetailModel *)demoDetailModel {
    _themeTitle = demoDetailModel.titleName;
    _themeSubtitle = demoDetailModel.subtitle;
    NSLog(@"_titleName = %@", _titleName);
}

- (void)encodeDemoDetailData {
    _ArrayM = [NSMutableArray array];
    for (NSDictionary *dict in _demoDetailList) {
        HLDemoDetailModel *demoDetailModel = [HLDemoDetailModel yy_modelWithDictionary:dict];
        [_ArrayM addObject:demoDetailModel];
        [_titleNameArrayM addObject:demoDetailModel.titleName];
        if (demoDetailModel.subtitle != nil) {
            [_subtitleArrayM addObject:demoDetailModel.subtitle];
        }
        
    }
}

- (void)loadData {
    if ([_titleName isEqualToString:@"Modal"]) {
        _demoDetailList = [HLDemoDataManager loadCustomPresentData];
        [self encodeDemoDetailData];
    }
    else if ([_titleName isEqualToString:@"ImagePicker"]) {
        _demoDetailList = [HLDemoDataManager loadChoseImagePickerData];
        [self encodeDemoDetailData];
    }
    else if ([_titleName isEqualToString:@"StretchImage"]) {
        _demoDetailList = [HLDemoDataManager loadTextStretchImageData];
        [self encodeDemoDetailData];
    }
}


#pragma mark - 设置界面
- (void)setupUI {
    UITableView *tv = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    [self.view addSubview:tv];
    [tv registerClass:[HLDemoDetailCell class] forCellReuseIdentifier:cellId];
    tv.rowHeight = UITableViewAutomaticDimension;
    tv.estimatedRowHeight = 60;
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
    return _ArrayM.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HLDemoDetailModel *demoDetailModel = [[HLDemoDetailModel alloc]init];
    demoDetailModel = _ArrayM[indexPath.row];
    demoDetailModel.titleName = _titleNameArrayM[indexPath.row];
    demoDetailModel.subtitle = _subtitleArrayM[indexPath.row];
    HLDemoDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.demoDetailModel = demoDetailModel;
//    cell.textLabel.text = _titleNameArrayM[indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}


#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    HLDemoDetailModel *demoDetailModel = [[HLDemoDetailModel alloc]init];
    demoDetailModel = _ArrayM[indexPath.row];
    demoDetailModel.titleName = _titleNameArrayM[indexPath.row];
    demoDetailModel.subtitle = _subtitleArrayM[indexPath.row];
    
    if ([demoDetailModel.subtitle isEqualToString:@"HLModalPresentStyleBounce"]) {
        HLDemoCustomTransitionVC *vc = [[HLDemoCustomTransitionVC alloc]init];
        [self presentViewController:vc animated:YES completion:nil];
    }
    else if ([demoDetailModel.subtitle isEqualToString:@"HLModalDismissStyleSlideUp"]) {
        HLModalFromBottomVC *vc = [[HLModalFromBottomVC alloc]init];
        [self presentViewController:vc animated:YES completion:nil];
    }
    else if ([demoDetailModel.subtitle isEqualToString:@"HLModalPresentStyleFadeIn"]) {
        HLModalFadeInVC *vc = [[HLModalFadeInVC alloc]init];
        [self presentViewController:vc animated:YES completion:nil];
    }
    else if ([demoDetailModel.subtitle isEqualToString:@"HLImagePickerController"]) {
        HDImagePickerController *vc = [[HDImagePickerController alloc]init];
        [self presentViewController:vc animated:YES completion:nil];
    }
    else if ([demoDetailModel.subtitle isEqualToString:@"HLTextStrechImageView"]) {
        HDTextStretchImageVC *vc = [[HDTextStretchImageVC alloc]init];
        [self presentViewController:vc animated:NO completion:nil];
    }
    
    
}

@end
