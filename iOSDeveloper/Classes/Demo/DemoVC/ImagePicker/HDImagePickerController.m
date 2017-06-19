//
//  HDImagePickerController.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/9.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HDImagePickerController.h"
#import "HLImagePickerController.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface HDImagePickerController ()

@property(nonatomic, strong) UIImageView *imageView;

@end

@implementation HDImagePickerController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 注: 需要在InfoPlist添加访问相册权限 Privacy - Photo Library Usage Description 选项,否则会引起崩溃
    [self setupUI];
}

#pragma mark - 设置界面
- (void)setupUI {
    CGFloat width = 100;
    CGFloat height = 60;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    button.frame = CGRectMake(SCREEN_WIDTH/2 - width/2, SCREEN_HEIGHT - (height+50), width, height);
    button.backgroundColor = [UIColor colorWithRed:22.0/255.0 green:147.0/255.0 blue:229.0/255.0 alpha:1.0];
    [button setTitle:@"打开相册" forState:UIControlStateNormal];
    button.tintColor = [UIColor darkGrayColor];
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *dismissBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:dismissBtn];
    dismissBtn.frame = CGRectMake(SCREEN_WIDTH/2 - width/2, SCREEN_HEIGHT - 2*(height+50), width, height);
    dismissBtn.backgroundColor = [UIColor colorWithRed:22.0/255.0 green:147.0/255.0 blue:229.0/255.0 alpha:1.0];
    [dismissBtn setTitle:@"DISMISS" forState:UIControlStateNormal];
    dismissBtn.tintColor = [UIColor darkGrayColor];
    [dismissBtn addTarget:self action:@selector(dismissVC) forControlEvents:UIControlEventTouchUpInside];
}



- (void)clickButton {
    [self loadPhoto];
}

-(void)loadPhoto{
    HLImagePickerController *photoPath = [[HLImagePickerController alloc]init];
    [self presentViewController:photoPath animated:YES completion:nil];
    photoPath.callBackBlock = ^(NSString *imagePath){
        NSLog(@"text is %@",imagePath);
        UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
        
        CGFloat ivWidth = 300;
        CGFloat ivHeight = 300;
        
        if (self.imageView == nil) {
            UIImageView *iv = [[UIImageView alloc]initWithImage:image];
            self.imageView = iv;
        } else {
            if (self.imageView.image != nil) {
                self.imageView.image = nil;
                self.imageView = [[UIImageView alloc]initWithImage:image];
            }
        }
        
        [self.view addSubview:self.imageView];
        self.imageView.frame = CGRectMake(SCREEN_WIDTH/2 - ivWidth/2, SCREEN_HEIGHT/2 - ivHeight/2 - 60, ivWidth, ivHeight);
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        
        
    };
}

- (void)dismissVC {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
