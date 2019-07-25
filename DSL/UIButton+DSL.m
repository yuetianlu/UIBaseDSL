//
//  UIButton+Block.m
//  BlockDemo
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "UIButton+DSL.h"

@implementation UIButton (DSL)

- (UIButton *(^)(NSString *))title {
    return ^UIButton *(NSString *title){
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIColor *))titleColor {
    return ^UIButton *(UIColor *color){
        [self setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIFont *))setFont {
    return ^UIButton *(UIFont *font){
        self.titleLabel.font = font;
        return self;
    };
}

- (UIButton *(^)(CGRect))setFrame {
    return ^UIButton *(CGRect frame){
        self.frame = frame;
        return self;
    };
}

@end
