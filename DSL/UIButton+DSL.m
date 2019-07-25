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

- (UIButton *(^)(NSString *, UIControlState))YTitle {
    @weakify(self)
    return ^UIButton *(NSString *title, UIControlState state){
        @strongify(self)
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *, UIControlState))YTitleColor {
    @weakify(self)
    return ^UIButton *(UIColor *color, UIControlState state){
        @strongify(self)
        [self setTitleColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(UIFont *))YFont {
    @weakify(self)
    return ^UIButton *(UIFont *font){
        @strongify(self)
        self.titleLabel.font = font;
        return self;
    };
}

@end
