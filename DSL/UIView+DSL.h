//
//  UIView+DSL.h
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DSL)
- (UIView *(^)(CGRect))YFrame;
- (UIView *(^)(CGRect))YBounds;
- (UIView *(^)(CGPoint))YCenter;
- (UIView *(^)(BOOL))YClipsToBounds;
- (UIView *(^)(CGFloat))YAlpha;
- (UIView *(^)(BOOL))YOpaque;
- (UIView *(^)(BOOL))YHidden;
- (UIView *(^)(UIViewContentMode))YContentMode;
- (UIView *(^)(UIColor *))YBackgroundColor;
- (UIView *(^)(BOOL))YMasksToBounds;
- (UIView *(^)(CGFloat))YCornerRadius;
- (UIView *(^)(CGFloat))YBorderWidth;
- (UIView *(^)(UIColor *))YBorderColor;

- (UIView *(^)(UIColor *))YShadowColor;
- (UIView *(^)(CGSize))YShadowOffset;
- (UIView *(^)(float))YShadowOpacity;
- (UIView *(^)(CGFloat))YShadowRadius;
- (UIView *(^)(CGPathRef))YShadowPath;

- (UIView *(^)(BOOL))YUserInteractionEnabled;
- (UIView *(^)(UIView *))YAddToView;
@end

