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

- (UIView *(^)(CGRect))YBounds {
    @weakify(self)
    return ^UIView *(CGRect bounds) {
        @strongify(self)
        self.bounds = bounds;
        return self;
    };
}

- (UIView *(^)(CGPoint))YCenter {
    @weakify(self)
    return ^UIView *(CGPoint center) {
        @strongify(self)
        self.center = center;
        return self;
    };
}

- (UIView *(^)(BOOL))YClipsToBounds {
    @weakify(self)
    return ^UIView *(BOOL clipsToBounds) {
        @strongify(self)
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

- (UIView *(^)(CGFloat))YAlpha {
    @weakify(self)
    return ^UIView *(CGFloat alpha) {
        @strongify(self)
        self.alpha = alpha;
        return self;
    };
}

- (UIView *(^)(BOOL))YOpaque {
    @weakify(self)
    return ^UIView *(BOOL opaque) {
        @strongify(self)
        self.opaque = opaque;
        return self;
    };
}

- (UIView *(^)(BOOL))YHidden {
    @weakify(self)
    return ^UIView *(BOOL hidden) {
        @strongify(self)
        self.hidden = hidden;
        return self;
    };
}

- (UIView *(^)(UIViewContentMode))YContentMode {
    @weakify(self)
    return ^UIView *(UIViewContentMode contentMode) {
        @strongify(self)
        self.contentMode = contentMode;
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

- (UIView *(^)(BOOL))YMasksToBounds {
    @weakify(self)
    return ^UIView *(BOOL masksToBounds) {
        @strongify(self)
        self.layer.masksToBounds = masksToBounds;
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

- (UIView *(^)(UIColor *))YShadowColor {
    @weakify(self)
    return ^UIView *(UIColor *shadowColor) {
        @strongify(self)
        self.layer.shadowColor = shadowColor.CGColor;
        return self;
    };
}

- (UIView *(^)(CGSize))YShadowOffset {
    @weakify(self)
    return ^UIView *(CGSize shadowOffset) {
        @strongify(self)
        self.layer.shadowOffset = shadowOffset;
        return self;
    };
}

- (UIView *(^)(float))YShadowOpacity {
    @weakify(self)
    return ^UIView *(float shadowOpacity) {
        @strongify(self)
        self.layer.shadowOpacity = shadowOpacity;
        return self;
    };
}

- (UIView *(^)(CGFloat))YShadowRadius {
    @weakify(self)
    return ^UIView *(CGFloat shadowRadius) {
        @strongify(self)
        self.layer.shadowRadius = shadowRadius;
        return self;
    };
}

- (UIView *(^)(CGPathRef))YShadowPath {
    @weakify(self)
    return ^UIView *(CGPathRef shadowPath) {
        @strongify(self)
        self.layer.shadowPath = shadowPath;
        return self;
    };
}

- (UIView *(^)(BOOL))YUserInteractionEnabled {
    @weakify(self)
    return ^UIView *(BOOL userInteractionEnabled) {
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
