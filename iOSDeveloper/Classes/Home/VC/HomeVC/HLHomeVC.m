//
//  HLHomeVC.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/28.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLHomeVC.h"
#import "HLHomeCollectionCell.h"
#import "HLHomeCollectionViewFlowLayout.h"
#import "HLHomeDataManager.h"
#import "HLHomeDetailVC.h"

static NSString *cCellId = @"cCellId";

@interface HLHomeVC () <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSArray *titleList;


// 执行的数组
@property (nonatomic, strong) NSMutableArray *ArrayM;

// 标题的专有数组
@property (nonatomic, strong) NSMutableArray *titleNameArrayM;
// iconName 的专有数组
@property (nonatomic, strong) NSMutableArray *iconArrayM;

@end

@implementation HLHomeVC

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
//    _titleList = @[@"博客", @"文章", @"Objective-C", @"Swift"];
    
    
    NSArray *array = [HLHomeDataManager loadHomeData];
    _ArrayM = [NSMutableArray array];
    _titleNameArrayM = [NSMutableArray array];
    _iconArrayM = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        HLHomeModel *homeModel = [HLHomeModel yy_modelWithDictionary:dict];
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
    [cv registerClass:[HLHomeCollectionCell class] forCellWithReuseIdentifier:cCellId];
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
    
    HLHomeModel *model = [[HLHomeModel alloc]init];
    model = _ArrayM[indexPath.row];
    NSLog(@"_titleNameArrayM[indexPath.row] = %@", _titleNameArrayM[indexPath.row]);
    model.titleName = _titleNameArrayM[indexPath.row];
    model.iconName = _iconArrayM[indexPath.row];
    
    HLHomeCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cCellId forIndexPath:indexPath];
    cell.homeModel = model;
    
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
    HLHomeModel *model = [[HLHomeModel alloc]init];
    model.titleName = _titleNameArrayM[indexPath.row];
    HLHomeDetailVC *vc = [[HLHomeDetailVC alloc]init];
    vc.homeModel = model;
//    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
    
}





@end
