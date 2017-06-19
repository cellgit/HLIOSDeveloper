//
//  HLDemoCollectionCell.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/4.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLDemoModel.h"

@interface HLDemoCollectionCell : UICollectionViewCell

@property (nonatomic, strong) NSString *titleName;
@property (nonatomic, strong) HLDemoModel *demoModel;

@end
