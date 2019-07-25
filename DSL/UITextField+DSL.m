//
//  UITextField+DSL.m
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "UITextField+DSL.h"
#import "YTMacro.h"

@implementation UITextField (DSL)

- (UITextField *(^)(NSString *))YText {
    @weakify(self)
    return ^UITextField *(NSString *text) {
        @strongify(self)
        self.text = text;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *))YAttributedText {
    @weakify(self)
    return ^UITextField *(NSAttributedString *attributedText) {
        @strongify(self)
        self.attributedText = attributedText;
        return self;
    };
}

- (UITextField *(^)(UIFont *))YFont {
    @weakify(self)
    return ^UITextField *(UIFont *font) {
        @strongify(self)
        self.font = font;
        return self;
    };
}

- (UITextField *(^)(UIColor *))YTextColor {
    @weakify(self)
    return ^UITextField *(UIColor *textColor) {
        @strongify(self)
        self.textColor = textColor;
        return self;
    };
}

- (UITextField *(^)(NSTextAlignment))YTextAlignment {
    @weakify(self)
    return ^UITextField *(NSTextAlignment textAlignment) {
        @strongify(self)
        self.textAlignment = textAlignment;
        return self;
    };
}

- (UITextField *(^)(UITextBorderStyle))YBorderStyle {
    @weakify(self)
    return ^UITextField *(UITextBorderStyle borderStyle) {
        @strongify(self)
        self.borderStyle = borderStyle;
        return self;
    };
}

- (UITextField *(^)(NSDictionary<NSAttributedStringKey,id> *))YDefaultTextAttributes{
    @weakify(self)
    return ^UITextField *(NSDictionary<NSAttributedStringKey,id> * defaultTextAttributes) {
        @strongify(self)
        self.defaultTextAttributes = defaultTextAttributes;
        return self;
    };
}

- (UITextField *(^)(NSString *))YPlaceholder {
    @weakify(self)
    return ^UITextField *(NSString *placeholder) {
        @strongify(self)
        self.placeholder = placeholder;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *))YAttributedPlaceholder {
    @weakify(self)
    return ^UITextField *(NSAttributedString *attributedPlaceholder) {
        @strongify(self)
        self.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}

- (UITextField *(^)(BOOL))YClearsOnBeginEditing {
    @weakify(self)
    return ^UITextField *(BOOL clearsOnBeginEditing) {
        @strongify(self)
        self.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

- (UITextField *(^)(BOOL))YAdjustsFontSizeToFitWidth {
    @weakify(self)
    return ^UITextField *(BOOL adjustsFontSizeToFitWidth) {
        @strongify(self)
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (UITextField *(^)(id<UITextFieldDelegate>))YDelegate {
    @weakify(self)
    return ^UITextField *(id<UITextFieldDelegate> delegate) {
        @strongify(self)
        self.delegate = delegate;
        return self;
    };
}

- (UITextField *(^)(UIImage *))YBackground {
    @weakify(self)
    return ^UITextField *(UIImage *background) {
        @strongify(self)
        self.background = background;
        return self;
    };
}

- (UITextField *(^)(UIImage *))YDisabledBackground {
    @weakify(self)
    return ^UITextField *(UIImage *disabledBackground) {
        @strongify(self)
        self.disabledBackground = disabledBackground;
        return self;
    };
}

@end
