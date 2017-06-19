//
//  HLDemoVC.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/4.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLDemoVC.h"
#import "HLDemoCollectionCell.h"
#import "HLHomeCollectionViewFlowLayout.h"
#import "HLDemoDataManager.h"
#import "HLDemoDetailVC.h"

static NSString *cCellId = @"cCellId";

@interface HLDemoVC () <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSArray *titleList;


// 执行的数组
@property (nonatomic, strong) NSMutableArray *ArrayM;

// 标题的专有数组
@property (nonatomic, strong) NSMutableArray *titleNameArrayM;
// iconName 的专有数组
@property (nonatomic, strong) NSMutableArray *iconArrayM;

@end

@implementation HLDemoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupUI];
    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadData {
    NSArray *array = [HLDemoDataManager loadDemoData];
    _ArrayM = [NSMutableArray array];
    _titleNameArrayM = [NSMutableArray array];
    _iconArrayM = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        HLDemoModel *homeModel = [HLDemoModel yy_modelWithDictionary:dict];
        [_ArrayM addObject:homeModel];
        [_titleNameArrayM addObject:homeModel.titleName];
        [_iconArrayM addObject:homeModel.iconName];
    }
}

#pragma mark - 设置界面
- (void)setupUI {
    
    HLHomeCollectionViewFlowLayout *layout = [[HLHomeCollectionViewFlowLayout alloc]init];
    UICollectionView *cv = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
    [self.view addSubview:cv];
    cv.backgroundColor = [UIColor whiteColor];
    [cv registerClass:[HLDemoCollectionCell class] forCellWithReuseIdentifier:cCellId];
    [cv registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:cCellId];
    
    cv.scrollsToTop = NO;
    cv.showsVerticalScrollIndicator = NO;
    cv.showsHorizontalScrollIndicator = NO;
    cv.dataSource = self;
    cv.delegate = self;
    
    
    [cv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSLog(@"_ArrayM.count = %zd", _ArrayM.count);
    return _ArrayM.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    HLDemoModel *model = [[HLDemoModel alloc]init];
    model = _ArrayM[indexPath.row];
    NSLog(@"_titleNameArrayM[indexPath.row] = %@", _titleNameArrayM[indexPath.row]);
    model.titleName = _titleNameArrayM[indexPath.row];
    model.iconName = _iconArrayM[indexPath.row];
    
    HLDemoCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cCellId forIndexPath:indexPath];
    cell.demoModel = model;
    
    NSLog(@"model = %@", model.titleName);
    
    return cell;
}



#pragma mark - UICollectionViewDelegate
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    if (SCREEN_WIDTH == 375 && SCREEN_HEIGHT == 667) {
        return UIEdgeInsetsMake(0.5, 1.5, 0.5, 0.5);
    }
    else {
        return UIEdgeInsetsMake(0.5, 1.0, 0.5, 0.6);
    }
    
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    
    NSLog(@"indexPath.row = %zd", indexPath.row);
    HLDemoModel *model = [[HLDemoModel alloc]init];
    model.titleName = _titleNameArrayM[indexPath.row];
    HLDemoDetailVC *vc = [[HLDemoDetailVC alloc]init];
    vc.demoModel = model;
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
