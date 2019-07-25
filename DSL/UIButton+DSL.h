//
//  UIButton+Block.h
//  BlockDemo
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIButton (DSL)

- (UIButton *(^)(NSString *))title;
- (UIButton *(^)(UIColor *))titleColor;
- (UIButton *(^)(UIFont *))setFont;
- (UIButton *(^)(CGRect))setFrame;
@end
