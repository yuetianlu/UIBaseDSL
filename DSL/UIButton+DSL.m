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

- (UIButton *(^)(UIEdgeInsets))YContentEdgeInsets {
    @weakify(self)
    return ^UIButton *(UIEdgeInsets contentEdgeInsets){
        @strongify(self)
        self.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets))YTitleEdgeInsets {
    @weakify(self)
    return ^UIButton *(UIEdgeInsets titleEdgeInsets){
        @strongify(self)
        self.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets))YImageEdgeInsets {
    @weakify(self)
    return ^UIButton *(UIEdgeInsets imageEdgeInsets){
        @strongify(self)
        self.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (UIButton *(^)(BOOL))YReversesTitleShadowWhenHighlighted {
    @weakify(self)
    return ^UIButton *(BOOL reversesTitleShadowWhenHighlighted){
        @strongify(self)
        self.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted;
        return self;
    };
}

- (UIButton *(^)(BOOL))YAdjustsImageWhenHighlighted {
    @weakify(self)
    return ^UIButton *(BOOL adjustsImageWhenHighlighted){
        @strongify(self)
        self.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return self;
    };
}

- (UIButton *(^)(BOOL))YAdjustsImageWhenDisabled {
    @weakify(self)
    return ^UIButton *(BOOL adjustsImageWhenDisabled){
        @strongify(self)
        self.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return self;
    };
}

- (UIButton *(^)(BOOL))YShowsTouchWhenHighlighted {
    @weakify(self)
    return ^UIButton *(BOOL showsTouchWhenHighlighted){
        @strongify(self)
        self.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return self;
    };
}

- (UIButton *(^)(UIColor *))YTintColor {
    @weakify(self)
    return ^UIButton *(UIColor *tintColor){
        @strongify(self)
        self.tintColor = tintColor;
        return self;
    };
}
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

- (UIButton *(^)(UIColor *, UIControlState))YTitleShadowColor {
    @weakify(self)
    return ^UIButton *(UIColor *color, UIControlState state){
        @strongify(self)
        [self setTitleShadowColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))YImage {
    @weakify(self)
    return ^UIButton *(UIImage *image, UIControlState state){
        @strongify(self)
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *, UIControlState))YBackgroundImage {
    @weakify(self)
    return ^UIButton *(UIImage *image, UIControlState state){
        @strongify(self)
        [self setBackgroundImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(NSAttributedString *, UIControlState))YAttributedTitle {
    @weakify(self)
    return ^UIButton *(NSAttributedString *title, UIControlState state){
        @strongify(self)
        [self setAttributedTitle:title forState:state];
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
