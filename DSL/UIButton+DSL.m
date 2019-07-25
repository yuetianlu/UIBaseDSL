//
//  UIButton+Block.m
//  BlockDemo
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "UIButton+DSL.h"
#import "YTMacro.h"

@implementation UIButton (DSL)

- (UIButton *(^)(NSString *))title {
    @weakify(self)
    return ^UIButton *(NSString *title){
        @strongify(self)
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIColor *))titleColor {
    @weakify(self)
    return ^UIButton *(UIColor *color){
        @strongify(self)
        [self setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIFont *))setFont {
    @weakify(self)
    return ^UIButton *(UIFont *font){
        @strongify(self)
        self.titleLabel.font = font;
        return self;
    };
}

- (UIButton *(^)(CGRect))setFrame {
    @weakify(self)
    return ^UIButton *(CGRect frame){
        @strongify(self)
        self.frame = frame;
        return self;
    };
}

@end
