//
//  HLHomeCollectionCell.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/29.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLHomeModel.h"

@interface HLHomeCollectionCell : UICollectionViewCell

@property (nonatomic, strong) NSString *titleName;
@property (nonatomic, strong) HLHomeModel *homeModel;

@end
