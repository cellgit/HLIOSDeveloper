//
//  HLDetailVC.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/29.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLHomeModel.h"

@interface HLDetailVC : UIViewController

@property (nonatomic, strong) HLDetailVCModel *detailModel;

@property (nonatomic, strong) NSString *urlName;

//@property (nonatomic, strong) HLHomeThemeModel *themeModel;
@property (nonatomic, strong) NSString *subtitle;

@end
