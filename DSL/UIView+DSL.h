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
- (UIView *(^)(UIColor *))YBackgroundColor;
- (UIView *(^)(CGFloat))YCornerRadius;
- (UIView *(^)(CGFloat))YBorderWidth;
- (UIView *(^)(UIColor *))YBorderColor;
- (UIView *(^)(bool))YUserInteractionEnabled;
- (UIView *(^)(UIView *))YAddToView;
@end

