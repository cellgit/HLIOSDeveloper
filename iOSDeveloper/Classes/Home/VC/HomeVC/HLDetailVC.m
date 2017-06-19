//
//  HLDetailVC.m
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/5/29.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import "HLDetailVC.h"
#import "AppDelegate.h"

@interface HLDetailVC () <UIWebViewDelegate>

@property (nonatomic, strong) UIWebView *webView;

@property (nonatomic, weak) UIButton *forwardButton;

@property (nonatomic, weak) UILabel *loadingLabel;

@property (nonatomic, assign) BOOL isMidnight;

@end

@implementation HLDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self registerNotifications];
    [self setupUI];
    _isMidnight = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setDetailModel:(HLDetailVCModel *)detailModel {
    
    NSLog(@"detailModel.urlName = %@", detailModel.urlName);
    
    _urlName = detailModel.urlName;
    _subtitle = detailModel.subtitle;
    
    NSLog(@"_subtitle = %@", _subtitle);
}


#pragma mark - 设置界面
- (void)setupUI {
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(backToLastVC)];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectZero];
    webView.scalesPageToFit = YES;//自动对页面进行缩放以适应屏幕
    [self.view addSubview:webView];
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:_urlName]];
    [self.view addSubview:webView];
    [webView loadRequest:request];
    
    webView.backgroundColor = [UIColor clearColor];  // 将webView背景灰色变为白色
    webView.opaque = NO; // 处理底部黑框
    
    webView.mediaPlaybackAllowsAirPlay = YES;              // 设置音频播放是否支持ari play功能
    webView.allowsPictureInPictureMediaPlayback = YES;
    
    webView.allowsLinkPreview = YES;
    webView.delegate = self;
    self.webView = webView;
    
    UIView *bottomBarView = [[UIView alloc]init];
    [self.webView addSubview:bottomBarView];
    bottomBarView.backgroundColor = [UIColor whiteColor];
    bottomBarView.alpha = 0.9;
    
    UIView *boardView = [[UIView alloc]init];
    [bottomBarView addSubview:boardView];
    boardView.backgroundColor = [UIColor colorWithRed:227.0/255.0 green:227.0/255.0 blue:227.0/255.0 alpha:1.0];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [bottomBarView addSubview:backButton];
    [backButton addTarget:self action:@selector(backToLastPage) forControlEvents:UIControlEventTouchUpInside];
    [backButton setTitle:@"后退" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    
    UIButton *forwardButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [bottomBarView addSubview:forwardButton];
    [forwardButton addTarget:self action:@selector(goToForwardPage) forControlEvents:UIControlEventTouchUpInside];
    [forwardButton setTitle:@"下页" forState:UIControlStateNormal];
    [forwardButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    UIButton *shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [bottomBarView addSubview:shareButton];
    [shareButton addTarget:self action:@selector(shareToOthers) forControlEvents:UIControlEventTouchUpInside];
    [shareButton setTitle:@"分享" forState:UIControlStateNormal];
    [shareButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    [bottomBarView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(44);
        make.left.right.bottom.equalTo(self.webView);
    }];
    [boardView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1);
        make.left.top.right.equalTo(bottomBarView);
    }];
    
    [forwardButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(bottomBarView.mas_centerX);
        make.centerY.mas_equalTo(bottomBarView.mas_centerY);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(38);
    }];
    
    [backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(forwardButton.mas_left).offset(- 62);
        make.centerY.mas_equalTo(bottomBarView.mas_centerY);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(38);
    }];
    
    [shareButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(forwardButton.mas_right).offset(62);
        make.centerY.mas_equalTo(bottomBarView.mas_centerY);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(38);
    }];
    
    
    _forwardButton = forwardButton;
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    if (self.webView.canGoForward == YES) {
        _forwardButton.enabled = YES;
    }else{
        _forwardButton.enabled = NO;
        [_forwardButton setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    }
    
    return YES;
}



- (void)backToLastPage {
    if (self.webView.canGoBack == YES) {
        [self.webView goBack];
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}


- (void)goToForwardPage {
    if (self.webView.canGoForward == YES) {
        [self.webView goForward];
    }
}


- (void)shareToOthers {
    // 分享
}

- (void)backToLastVC {
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark - UIWebView 进行播放视频的时候横竖屏的处理
- (void)registerNotifications {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(begainFullScreen) name:UIWindowDidBecomeVisibleNotification object:nil];//进入全屏
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endFullScreen) name:UIWindowDidBecomeHiddenNotification object:nil];//退出全屏
    
}

- (void)begainFullScreen {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.allowRotation = YES;
    
}



- (void)endFullScreen {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.allowRotation = NO;
    
    //强制归正
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val =UIInterfaceOrientationPortrait;
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
}


#pragma mark - 网络加载提示
- (void)webViewDidStartLoad:(UIWebView *)webView{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"加载中..." style:UIBarButtonItemStylePlain target:self action:nil];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"_subtitle = %@", _subtitle);
    if (([_subtitle isEqualToString:@"王巍"] || [_subtitle isEqualToString:@"上善若水,人淡如菊"]) && _isMidnight == NO) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"切换到夜间模式" style:UIBarButtonItemStylePlain target:self action:@selector(changeMidnightModel)];
        return;
    }
    if (([_subtitle isEqualToString:@"王巍"] || [_subtitle isEqualToString:@"上善若水,人淡如菊"]) && _isMidnight == YES) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"切换到日间模式" style:UIBarButtonItemStylePlain target:self action:@selector(changeDayModel)];
        return;
    }
    
    else if (([_subtitle isEqualToString:@"王巍"] || [_subtitle isEqualToString:@"上善若水,人淡如菊"]) && _isMidnight == YES) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"切换到夜间模式" style:UIBarButtonItemStylePlain target:self action:@selector(changeMidnightModel)];
        return;
    }
    
    
    else {
       self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:self action:nil];
    }
    
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"加载失败..." style:UIBarButtonItemStylePlain target:self action:nil];
    [self performSelector:@selector(dismissAlertText) withObject:nil afterDelay:3];
}
- (void)dismissAlertText {
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:nil style:UIBarButtonItemStylePlain target:self action:nil];
}


#pragma mark - 切换夜间/日间模式
- (void)changeMidnightModel {
    
    _webView.backgroundColor = [UIColor blackColor];
    NSLog(@"model.subtitle = %@", _subtitle);
    if (([_subtitle isEqualToString:@"王巍"] || [_subtitle isEqualToString:@"上善若水,人淡如菊"]) && _isMidnight == NO) {
        _isMidnight = YES;
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"切换到日间模式" style:UIBarButtonItemStylePlain target:self action:@selector(changeDayModel)];
    }
}

- (void)changeDayModel {
    _webView.backgroundColor = [UIColor whiteColor];
    if (([_subtitle isEqualToString:@"王巍"] || [_subtitle isEqualToString:@"上善若水,人淡如菊"]) && _isMidnight == YES) {
        _isMidnight = NO;
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"切换到夜间模式" style:UIBarButtonItemStylePlain target:self action:@selector(changeMidnightModel)];
    }}


@end
