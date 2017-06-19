//
//  HLHomeCollectionViewFlowLayout.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/29.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLHomeCollectionViewFlowLayout.h"

@implementation HLHomeCollectionViewFlowLayout

- (void)prepareLayout {
    [super prepareLayout];
    
    NSString *strModel = [[UIDevice currentDevice] model];
    NSLog(@"设备类型：%@", strModel);
    
    CGFloat constant = 0.5;
    CGFloat itemW = (SCREEN_WIDTH-3) / 3;
    CGFloat itemH = itemW * 0.9;
    self.estimatedItemSize = CGSizeMake(itemW, itemH);
    self.minimumInteritemSpacing = constant;
    self.minimumLineSpacing = constant;
    
    
    self.scrollDirection = UICollectionViewScrollDirectionVertical;
    
}



@end
