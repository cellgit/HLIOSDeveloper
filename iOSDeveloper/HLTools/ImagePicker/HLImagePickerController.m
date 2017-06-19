//
//  HLImagePickerController.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/9.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLImagePickerController.h"

@interface HLImagePickerController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@end

@implementation HLImagePickerController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self openImagePickerControllerWithType:UIImagePickerControllerSourceTypePhotoLibrary];
}

-(void)getBlock:(CallBackBlcok)callBackBlock{
    self.callBackBlock = callBackBlock;
}
- (void)openImagePickerControllerWithType:(UIImagePickerControllerSourceType)type {
    if (![UIImagePickerController isSourceTypeAvailable:type]) return;
    self.sourceType = type;
    self.delegate = self;
//    self.allowsEditing = YES;
}

// 选择照片之后
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    UIImage* image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    NSData *data = UIImagePNGRepresentation(image);;
    //图片保存的路径
    NSString * DocumentsPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    [fileManager createDirectoryAtPath:DocumentsPath withIntermediateDirectories:YES attributes:nil error:nil];
    [fileManager createFileAtPath:[DocumentsPath stringByAppendingString:@"/image.png"] contents:data attributes:nil];
    NSString *filePath = [[NSString alloc]initWithFormat:@"%@%@",DocumentsPath,  @"/image.png"];
    NSLog(@"图片的完整路径是：%@", filePath);
    self.callBackBlock(filePath);
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
