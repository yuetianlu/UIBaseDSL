//
//  UIButton+Block.h
//  BlockDemo
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DSL)
- (UIButton *(^)(UIEdgeInsets))YContentEdgeInsets;
- (UIButton *(^)(UIEdgeInsets))YTitleEdgeInsets;
- (UIButton *(^)(UIEdgeInsets))YImageEdgeInsets;
- (UIButton *(^)(BOOL))YReversesTitleShadowWhenHighlighted;
- (UIButton *(^)(BOOL))YAdjustsImageWhenHighlighted;
- (UIButton *(^)(BOOL))YAdjustsImageWhenDisabled;
- (UIButton *(^)(BOOL))YShowsTouchWhenHighlighted;
- (UIButton *(^)(UIColor *))YTintColor;
- (UIButton *(^)(NSString *, UIControlState))YTitle;
- (UIButton *(^)(UIColor *, UIControlState))YTitleColor;
- (UIButton *(^)(UIColor *, UIControlState))YTitleShadowColor;
- (UIButton *(^)(UIImage *, UIControlState))YImage;
- (UIButton *(^)(UIImage *, UIControlState))YBackgroundImage;
- (UIButton *(^)(NSAttributedString *, UIControlState))YAttributedTitle;
- (UIButton *(^)(UIFont *))YFont;
@end
