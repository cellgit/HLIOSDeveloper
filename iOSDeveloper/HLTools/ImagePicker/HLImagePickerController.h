//
//  HLImagePickerController.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/9.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <UIKit/UIKit.h>

// 注: 需要在InfoPlist添加访问相册权限 Privacy - Photo Library Usage Description 选项,否则会引起崩溃
typedef void(^CallBackBlcok) (NSString *text);

@interface HLImagePickerController : UIImagePickerController

@property (nonatomic,copy)CallBackBlcok callBackBlock;

-(void)getBlock:(CallBackBlcok)block;

@end
