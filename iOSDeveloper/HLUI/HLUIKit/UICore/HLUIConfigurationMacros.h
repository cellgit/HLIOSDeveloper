//
//  HLUIConfigurationMacros.h
//  iOSDeveloper
//
//  Created by 刘宏立 on 2017/6/25.
//  Copyright © 2017年 lhl. All rights reserved.
//



#import "HLUIConfiguration.h"


//#ifndef HLUIConfigurationMacros_h
//#define HLUIConfigurationMacros_h
//
//
//#endif /* HLUIConfigurationMacros_h */


/*
 * 定义宏，宏的值是通过 HLUIConfiguration 的单例来获取属性的值。
 * 如果项目需要修改根据项目来修改某些宏的名字，请通过 HLUIConfiguration 来修改相应的属性，然后在项目启动的地方调用。
 * @waining 如果需要增加一个宏，则需要定义一个新的 HLUIConfiguration 属性。
 */


// 单例的宏

#define HLUICMI [HLUIConfiguration sharedInstance]


#pragma mark - Global Color

// 基础颜色
#define UIColorClear                [HLUICMI clearColor]
#define UIColorWhite                [HLUICMI whiteColor]
#define UIColorBlack                [HLUICMI blackColor]
#define UIColorGray                 [HLUICMI grayColor]
#define UIColorGrayDarken           [HLUICMI grayDarkenColor]
#define UIColorGrayLighten          [HLUICMI grayLightenColor]
#define UIColorRed                  [HLUICMI redColor]
#define UIColorGreen                [HLUICMI greenColor]
#define UIColorBlue                 [HLUICMI blueColor]
#define UIColorYellow               [HLUICMI yellowColor]

// 功能颜色
#define UIColorLink                 [HLUICMI linkColor]                       // 全局统一文字链接颜色
#define UIColorDisabled             [HLUICMI disabledColor]                   // 全局统一文字disabled颜色
#define UIColorForBackground        [HLUICMI backgroundColor]                 // 全局统一的背景色
#define UIColorMask                 [HLUICMI maskDarkColor]                   // 全局统一的mask背景色
#define UIColorMaskWhite            [HLUICMI maskLightColor]                  // 全局统一的mask背景色，白色
#define UIColorSeparator            [HLUICMI separatorColor]                  // 全局分隔线颜色
#define UIColorSeparatorDashed      [HLUICMI separatorDashedColor]            // 全局分隔线颜色（虚线）
#define UIColorPlaceholder          [HLUICMI placeholderColor]                // 全局的输入框的placeholder颜色

// 测试用的颜色
#define UIColorTestRed              [HLUICMI testColorRed]
#define UIColorTestGreen            [HLUICMI testColorGreen]
#define UIColorTestBlue             [HLUICMI testColorBlue]

// 可操作的控件
#pragma mark - UIControl

#define UIControlHighlightedAlpha       [HLUICMI controlHighlightedAlpha]          // 一般control的Highlighted透明值
#define UIControlDisabledAlpha          [HLUICMI controlDisabledAlpha]             // 一般control的Disable透明值

// 按钮
#pragma mark - UIButton
#define ButtonHighlightedAlpha          [HLUICMI buttonHighlightedAlpha]           // 按钮Highlighted状态的透明度
#define ButtonDisabledAlpha             [HLUICMI buttonDisabledAlpha]              // 按钮Disabled状态的透明度
#define ButtonTintColor                 [HLUICMI buttonTintColor]                  // 普通按钮的颜色

#define GhostButtonColorBlue            [HLUICMI ghostButtonColorBlue]              // HLUIGhostButtonColorBlue的颜色
#define GhostButtonColorRed             [HLUICMI ghostButtonColorRed]               // HLUIGhostButtonColorRed的颜色
#define GhostButtonColorGreen           [HLUICMI ghostButtonColorGreen]             // HLUIGhostButtonColorGreen的颜色
#define GhostButtonColorGray            [HLUICMI ghostButtonColorGray]              // HLUIGhostButtonColorGray的颜色
#define GhostButtonColorWhite           [HLUICMI ghostButtonColorWhite]             // HLUIGhostButtonColorWhite的颜色

#define FillButtonColorBlue            [HLUICMI fillButtonColorBlue]              // HLUIFillButtonColorBlue的颜色
#define FillButtonColorRed             [HLUICMI fillButtonColorRed]               // HLUIFillButtonColorRed的颜色
#define FillButtonColorGreen           [HLUICMI fillButtonColorGreen]             // HLUIFillButtonColorGreen的颜色
#define FillButtonColorGray            [HLUICMI fillButtonColorGray]              // HLUIFillButtonColorGray的颜色
#define FillButtonColorWhite           [HLUICMI fillButtonColorWhite]             // HLUIFillButtonColorWhite的颜色

// 输入框
#pragma mark - TextField & TextView
#define TextFieldTintColor              [HLUICMI textFieldTintColor]               // 全局UITextField、UITextView的tintColor
#define TextFieldTextInsets             [HLUICMI textFieldTextInsets]              // HLUITextField的内边距


#pragma mark - NavigationBar

#define NavBarHighlightedAlpha                          [HLUICMI navBarHighlightedAlpha]
#define NavBarDisabledAlpha                             [HLUICMI navBarDisabledAlpha]
#define NavBarButtonFont                                [HLUICMI navBarButtonFont]
#define NavBarButtonFontBold                            [HLUICMI navBarButtonFontBold]
#define NavBarBackgroundImage                           [HLUICMI navBarBackgroundImage]
#define NavBarShadowImage                               [HLUICMI navBarShadowImage]
#define NavBarBarTintColor                              [HLUICMI navBarBarTintColor]
#define NavBarTintColor                                 [HLUICMI navBarTintColor]
#define NavBarTitleColor                                [HLUICMI navBarTitleColor]
#define NavBarTitleFont                                 [HLUICMI navBarTitleFont]
#define NavBarBarBackButtonTitlePositionAdjustment      [HLUICMI navBarBackButtonTitlePositionAdjustment]
#define NavBarBackIndicatorImage                        [HLUICMI navBarBackIndicatorImage]                          // 自定义的返回按钮，尺寸建议与系统的返回按钮尺寸一致（iOS8下实测系统大小是(13, 21)），可提高性能
#define NavBarCloseButtonImage                          [HLUICMI navBarCloseButtonImage]

#define NavBarLoadingMarginRight                        [HLUICMI navBarLoadingMarginRight]                          // titleView里左边的loading的右边距
#define NavBarAccessoryViewMarginLeft                   [HLUICMI navBarAccessoryViewMarginLeft]                     // titleView里的accessoryView的左边距
#define NavBarActivityIndicatorViewStyle                [HLUICMI navBarActivityIndicatorViewStyle]                  // titleView loading 的style
#define NavBarAccessoryViewTypeDisclosureIndicatorImage [HLUICMI navBarAccessoryViewTypeDisclosureIndicatorImage]   // titleView上倒三角的默认图片


#pragma mark - TabBar

#define TabBarBackgroundImage                           [HLUICMI tabBarBackgroundImage]
#define TabBarBarTintColor                              [HLUICMI tabBarBarTintColor]
#define TabBarShadowImageColor                          [HLUICMI tabBarShadowImageColor]
#define TabBarTintColor                                 [HLUICMI tabBarTintColor]
#define TabBarItemTitleColor                            [HLUICMI tabBarItemTitleColor]
#define TabBarItemTitleColorSelected                    [HLUICMI tabBarItemTitleColorSelected]


#pragma mark - Toolbar

#define ToolBarHighlightedAlpha                         [HLUICMI toolBarHighlightedAlpha]
#define ToolBarDisabledAlpha                            [HLUICMI toolBarDisabledAlpha]
#define ToolBarTintColor                                [HLUICMI toolBarTintColor]
#define ToolBarTintColorHighlighted                     [HLUICMI toolBarTintColorHighlighted]
#define ToolBarTintColorDisabled                        [HLUICMI toolBarTintColorDisabled]
#define ToolBarBackgroundImage                          [HLUICMI toolBarBackgroundImage]
#define ToolBarBarTintColor                             [HLUICMI toolBarBarTintColor]
#define ToolBarShadowImageColor                         [HLUICMI toolBarShadowImageColor]
#define ToolBarButtonFont                               [HLUICMI toolBarButtonFont]


#pragma mark - SearchBar

#define SearchBarTextFieldBackground                    [HLUICMI searchBarTextFieldBackground]
#define SearchBarTextFieldBorderColor                   [HLUICMI searchBarTextFieldBorderColor]
#define SearchBarBottomBorderColor                      [HLUICMI searchBarBottomBorderColor]
#define SearchBarBarTintColor                           [HLUICMI searchBarBarTintColor]
#define SearchBarTintColor                              [HLUICMI searchBarTintColor]
#define SearchBarTextColor                              [HLUICMI searchBarTextColor]
#define SearchBarPlaceholderColor                       [HLUICMI searchBarPlaceholderColor]
#define SearchBarSearchIconImage                        [HLUICMI searchBarSearchIconImage]
#define SearchBarClearIconImage                         [HLUICMI searchBarClearIconImage]
#define SearchBarTextFieldCornerRadius                  [HLUICMI searchBarTextFieldCornerRadius]


#pragma mark - TableView / TableViewCell

#define TableViewBackgroundColor                   [HLUICMI tableViewBackgroundColor]                   // 普通列表的背景色
#define TableViewGroupedBackgroundColor            [HLUICMI tableViewGroupedBackgroundColor]            // Grouped类型的列表的背景色
#define TableSectionIndexColor                     [HLUICMI tableSectionIndexColor]                     // 列表右边索引条的文字颜色，iOS6及以后生效
#define TableSectionIndexBackgroundColor           [HLUICMI tableSectionIndexBackgroundColor]           // 列表右边索引条的背景色，iOS7及以后生效
#define TableSectionIndexTrackingBackgroundColor   [HLUICMI tableSectionIndexTrackingBackgroundColor]   // 列表右边索引条按下时的背景色，iOS6及以后生效
#define TableViewSeparatorColor                    [HLUICMI tableViewSeparatorColor]                    // 列表分隔线颜色
#define TableViewCellBackgroundColor               [HLUICMI tableViewCellBackgroundColor]               // 列表cel的背景色
#define TableViewCellSelectedBackgroundColor       [HLUICMI tableViewCellSelectedBackgroundColor]       // 列表cell按下时的背景色
#define TableViewCellWarningBackgroundColor        [HLUICMI tableViewCellWarningBackgroundColor]        // 列表cell在未读状态下的背景色
#define TableViewCellNormalHeight                  [HLUICMI tableViewCellNormalHeight]                  // 默认cell的高度

#define TableViewCellDisclosureIndicatorImage      [HLUICMI tableViewCellDisclosureIndicatorImage]      // 列表cell右边的箭头图片
#define TableViewCellCheckmarkImage                [HLUICMI tableViewCellCheckmarkImage]                // 列表cell右边的打钩checkmark

#define TableViewSectionHeaderBackgroundColor      [HLUICMI tableViewSectionHeaderBackgroundColor]
#define TableViewSectionFooterBackgroundColor      [HLUICMI tableViewSectionFooterBackgroundColor]
#define TableViewSectionHeaderFont                 [HLUICMI tableViewSectionHeaderFont]
#define TableViewSectionFooterFont                 [HLUICMI tableViewSectionFooterFont]
#define TableViewSectionHeaderTextColor            [HLUICMI tableViewSectionHeaderTextColor]
#define TableViewSectionFooterTextColor            [HLUICMI tableViewSectionFooterTextColor]
#define TableViewSectionHeaderHeight               [HLUICMI tableViewSectionHeaderHeight]               // 列表sectionheader的高度
#define TableViewSectionFooterHeight               [HLUICMI tableViewSectionFooterHeight]               // 列表sectionheader的高度
#define TableViewSectionHeaderContentInset         [HLUICMI tableViewSectionHeaderContentInset]
#define TableViewSectionFooterContentInset         [HLUICMI tableViewSectionFooterContentInset]

#define TableViewGroupedSectionHeaderFont          [HLUICMI tableViewGroupedSectionHeaderFont]
#define TableViewGroupedSectionFooterFont          [HLUICMI tableViewGroupedSectionFooterFont]
#define TableViewGroupedSectionHeaderTextColor     [HLUICMI tableViewGroupedSectionHeaderTextColor]
#define TableViewGroupedSectionFooterTextColor     [HLUICMI tableViewGroupedSectionFooterTextColor]
#define TableViewGroupedSectionHeaderHeight        [HLUICMI tableViewGroupedSectionHeaderHeight]
#define TableViewGroupedSectionFooterHeight        [HLUICMI tableViewGroupedSectionFooterHeight]
#define TableViewGroupedSectionHeaderContentInset  [HLUICMI tableViewGroupedSectionHeaderContentInset]
#define TableViewGroupedSectionFooterContentInset  [HLUICMI tableViewGroupedSectionFooterContentInset]

#define TableViewCellTitleLabelColor               [HLUICMI tableViewCellTitleLabelColor]               //cell的title颜色
#define TableViewCellDetailLabelColor              [HLUICMI tableViewCellDetailLabelColor]              //cell的detailTitle颜色

#pragma mark - UIWindowLevel
#define UIWindowLevelHLUIAlertView                  [HLUICMI windowLevelHLUIAlertView]
#define UIWindowLevelHLUIImagePreviewView           [HLUICMI windowLevelHLUIImagePreviewView]

#pragma mark - Others

#define SupportedOrientationMask                        [HLUICMI supportedOrientationMask]          // 默认支持的横竖屏方向
#define StatusbarStyleLightInitially                    [HLUICMI statusbarStyleLightInitially]      // 默认的状态栏内容是否使用白色，默认为NO，也即黑色
#define NeedsBackBarButtonItemTitle                     [HLUICMI needsBackBarButtonItemTitle]       // 全局是否需要返回按钮的title，不需要则只显示一个返回image
#define HidesBottomBarWhenPushedInitially               [HLUICMI hidesBottomBarWhenPushedInitially] // HLUICommonViewController.hidesBottomBarWhenPushed的初始值，默认为YES

