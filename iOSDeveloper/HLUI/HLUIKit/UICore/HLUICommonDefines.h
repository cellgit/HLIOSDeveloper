//
//  HLUICommonDefines.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/19.
//  Copyright © 2017年 lhl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

//#ifndef HLUICommonDefines_h
//#define HLUICommonDefines_h
//
//
//#endif /* HLUICommonDefines_h */


#pragma mark - 变量-编译相关

// 判断当前是否debug编译模式
#ifdef DEBUG
#define IS_DEBUG YES
#else
#define IS_DEBUG NO
#endif


/// 使用iOS7 API时要加`ifdef IOS7_SDK_ALLOWED`的判断

#ifndef __IPHONE_7_0
#define __IPHONE_7_0 70000
#endif
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_7_0
#define IOS7_SDK_ALLOWED YES
#endif


/// 使用iOS8 API时要加`ifdef IOS8_SDK_ALLOWED`的判断

#ifndef __IPHONE_8_0
#define __IPHONE_8_0 80000
#endif
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_8_0
#define IOS8_SDK_ALLOWED YES
#endif


/// 使用iOS9 API时要加`ifdef IOS9_SDK_ALLOWED`的判断

#ifndef __IPHONE_9_0
#define __IPHONE_9_0 90000
#endif
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_9_0
#define IOS9_SDK_ALLOWED YES
#endif


/// 使用iOS10 API时要加`ifdef IOS10_SDK_ALLOWED`的判断

#ifndef __IPHONE_10_0
#define __IPHONE_10_0 100000
#endif
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_10_0
#define IOS10_SDK_ALLOWED YES
#endif

#pragma mark - Clang

#define ArgumentToString(macro) #macro
#define ClangWarningConcat(warning_name) ArgumentToString(clang diagnostic ignored warning_name)

// 参数可直接传入 clang 的 warning 名，warning 列表参考：http://fuckingclangwarnings.com/
#define BeginIgnoreClangWarning(warningName) _Pragma("clang diagnostic push") _Pragma(ClangWarningConcat(#warningName))
#define EndIgnoreClangWarning _Pragma("clang diagnostic pop")

#define BeginIgnorePerformSelectorLeaksWarning BeginIgnoreClangWarning(-Warc-performSelector-leaks)
#define EndIgnorePerformSelectorLeaksWarning EndIgnoreClangWarning

#define BeginIgnoreAvailabilityWarning BeginIgnoreClangWarning(-Wpartial-availability)
#define EndIgnoreAvailabilityWarning EndIgnoreClangWarning

#define BeginIgnoreDeprecatedWarning BeginIgnoreClangWarning(-Wdeprecated-declarations)
#define EndIgnoreDeprecatedWarning EndIgnoreClangWarning



#pragma mark - 变量-设备相关

// 设备类型
#define IS_IPAD [QMUIHelper isIPad]
#define IS_IPAD_PRO [QMUIHelper isIPadPro]
#define IS_IPOD [QMUIHelper isIPod]
#define IS_IPHONE [QMUIHelper isIPhone]
#define IS_SIMULATOR [QMUIHelper isSimulator]

// 操作系统版本号
#define IOS_VERSION ([[[UIDevice currentDevice] systemVersion] floatValue])

// 是否横竖屏
// 用户界面横屏了才会返回YES
#define IS_LANDSCAPE UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])
// 无论支不支持横屏，只要设备横屏了，就会返回YES
#define IS_DEVICE_LANDSCAPE UIDeviceOrientationIsLandscape([[UIDevice currentDevice] orientation])


// 屏幕宽度，会根据横竖屏的变化而变化
#define SCREEN_WIDTH (IOS_VERSION >= 8.0 ? [[UIScreen mainScreen] bounds].size.width : (IS_LANDSCAPE ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width))

// 屏幕宽度，跟横竖屏无关
#define DEVICE_WIDTH (IOS_VERSION >= 8.0 ? (IS_LANDSCAPE ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width) : [[UIScreen mainScreen] bounds].size.width)

// 屏幕高度，会根据横竖屏的变化而变化
#define SCREEN_HEIGHT (IOS_VERSION >= 8.0 ? [[UIScreen mainScreen] bounds].size.height : (IS_LANDSCAPE ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height))

// 屏幕高度，跟横竖屏无关
#define DEVICE_HEIGHT (IOS_VERSION >= 8.0 ? (IS_LANDSCAPE ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height) : [[UIScreen mainScreen] bounds].size.height)

// 设备屏幕尺寸
#define IS_55INCH_SCREEN [QMUIHelper is55InchScreen]
#define IS_47INCH_SCREEN [QMUIHelper is47InchScreen]
#define IS_40INCH_SCREEN [QMUIHelper is40InchScreen]
#define IS_35INCH_SCREEN [QMUIHelper is35InchScreen]

// 是否Retina
#define IS_RETINASCREEN ([[UIScreen mainScreen] scale] >= 2.0)


#pragma mark - 变量-布局相关

// bounds && nativeBounds / scale && nativeScale
#define ScreenBoundsSize ([[UIScreen mainScreen] bounds].size)
#define ScreenNativeBoundsSize (IOS_VERSION >= 8.0 ? ([[UIScreen mainScreen] nativeBounds].size) : ScreenBoundsSize)
#define ScreenScale ([[UIScreen mainScreen] scale])
#define ScreenNativeScale (IOS_VERSION >= 8.0 ? ([[UIScreen mainScreen] nativeScale]) : ScreenScale)
// 区分设备是否处于放大模式（iPhone 6及以上的设备支持放大模式）
#define ScreenInDisplayZoomMode (ScreenNativeScale > ScreenScale)

// 状态栏高度(来电等情况下，状态栏高度会发生变化，所以应该实时计算)
#define StatusBarHeight (IOS_VERSION >= 8.0 ? ([[UIApplication sharedApplication] statusBarFrame].size.height) : (IS_LANDSCAPE ? ([[UIApplication sharedApplication] statusBarFrame].size.width) : ([[UIApplication sharedApplication] statusBarFrame].size.height)))

// navigationBar相关frame
#define NavigationBarHeight (IS_LANDSCAPE ? PreferredVarForDevices(44, 32, 32, 32) : 44)

// toolBar的相关frame
#define ToolBarHeight (IS_LANDSCAPE ? PreferredVarForDevices(44, 32, 32, 32) : 44)

#define TabBarHeight 49

// 除去navigationBar和toolbar后的中间内容区域
#define NavigationContentHeight(viewController) (CGRectGetHeight(viewController.view.frame) - NavigationBarHeight - StatusBarHeight - (viewController.navigationController.toolbarHidden ? 0 : CGRectGetHeight(viewController.navigationController.toolbar.frame)))

// 兼容controller.view的subView的top值在不同iOS版本下的差异
#define NavigationContentTop (StatusBarHeight + NavigationBarHeight)// 这是动态获取的
#define NavigationContentStaticTop (20 + NavigationBarHeight) // 不动态从状态栏获取高度，避免来电模式下多算了20pt（来电模式下系统会把UIViewController.view的frame往下移动20pt）
#define NavigationContentOriginY(y) (NavigationContentTop + y)

// 获取一个像素(待补全...)












