//
//  UIButton+Block.h
//  BlockDemo
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DSL)
- (UIButton *(^)(NSString *, UIControlState))YTitle;
- (UIButton *(^)(UIColor *, UIControlState))YTitleColor;
- (UIButton *(^)(UIFont *))YFont;
@end
