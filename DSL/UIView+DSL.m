//
//  UIView+DSL.m
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "UIView+DSL.h"
#import "YTMacro.h"

@implementation UIView (DSL)

- (UIView *(^)(CGRect))YFrame {
    @weakify(self)
    return ^UIView *(CGRect frame) {
        @strongify(self)
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(UIColor *))YBackgroundColor {
    @weakify(self)
    return ^UIView *(UIColor *backgroundColor) {
        @strongify(self)
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UIView *(^)(CGFloat))YCornerRadius {
    @weakify(self)
    return ^UIView *(CGFloat cornerRadius) {
        @strongify(self)
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (UIView *(^)(CGFloat))YBorderWidth {
    @weakify(self)
    return ^UIView *(CGFloat borderWidth) {
        @strongify(self)
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

- (UIView *(^)(UIColor *))YBorderColor {
    @weakify(self)
    return ^UIView *(UIColor *borderColor) {
        @strongify(self)
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (UIView *(^)(bool))YUserInteractionEnabled {
    @weakify(self)
    return ^UIView *(bool userInteractionEnabled) {
        @strongify(self)
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UIView *(^)(UIView *))YAddToView {
    @weakify(self)
    return ^UIView *(UIView *view) {
        @strongify(self)
        [view addSubview:self];
        return self;
    };
}
@end
