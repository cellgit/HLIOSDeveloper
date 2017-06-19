//
//  HLPortalsDeTailsVC.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/4.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLPortalsModel.h"

@interface HLPortalsDeTailsVC : UIViewController

@property (nonatomic, strong) HLPortalsModel *portalsModel;

@property (nonatomic, strong) NSString *urlName;

//@property (nonatomic, strong) HLHomeThemeModel *themeModel;
@property (nonatomic, copy) NSString *subtitle;

@property (nonatomic, copy) NSString *titleName;

@end
