//
//  UILabel+DSL.h
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (DSL) 
- (UILabel *(^)(NSString *))YText;
- (UILabel *(^)(UIFont *))YFont;
- (UILabel *(^)(UIColor *))YTextColor;
- (UILabel *(^)(NSTextAlignment))YTextAlignment;
- (UILabel *(^)(NSLineBreakMode))YLineBreakMode;
- (UILabel *(^)(NSAttributedString *))YAttributedText;
- (UILabel *(^)(UIColor *))YHighlightedTextColor;
- (UILabel *(^)(NSInteger))YNumberOfLines;
- (UILabel *(^)(BOOL))YAdjustsFontSizeToFitWidth;
- (UILabel *(^)(UIBaselineAdjustment))YBaselineAdjustment;
@end
