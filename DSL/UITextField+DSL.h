//
//  UITextField+DSL.h
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (DSL)
- (UITextField *(^)(NSString *))YText;
- (UITextField *(^)(NSAttributedString *))YAttributedText;
- (UITextField *(^)(UIFont *))YFont;
- (UITextField *(^)(UIColor *))YTextColor;
- (UITextField *(^)(NSTextAlignment))YTextAlignment;
- (UITextField *(^)(UITextBorderStyle))YBorderStyle;
- (UITextField *(^)(NSDictionary<NSAttributedStringKey,id> *))YDefaultTextAttributes;
- (UITextField *(^)(NSString *))YPlaceholder;
- (UITextField *(^)(NSAttributedString *))YAttributedPlaceholder;
- (UITextField *(^)(BOOL))YClearsOnBeginEditing;
- (UITextField *(^)(BOOL))YAdjustsFontSizeToFitWidth;
- (UITextField *(^)(id<UITextFieldDelegate>))YDelegate;
- (UITextField *(^)(UIImage *))YBackground;
- (UITextField *(^)(UIImage *))YDisabledBackground;
@end
