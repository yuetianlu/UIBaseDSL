//
//  UILabel+DSL.m
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "UILabel+DSL.h"
#import "YTMacro.h"

@implementation UILabel (DSL)

- (UILabel *(^)(NSString *))YText {
    @weakify(self)
    return ^UILabel *(NSString *text) {
        @strongify(self)
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(UIFont *))YFont {
    @weakify(self)
    return ^UILabel *(UIFont *font) {
        @strongify(self)
        self.font = font;
        return self;
    };
}

- (UILabel *(^)(UIColor *))YTextColor {
    @weakify(self)
    return ^UILabel *(UIColor *textColor) {
        @strongify(self)
        self.textColor = textColor;
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment))YTextAlignment {
    @weakify(self)
    return ^UILabel *(NSTextAlignment textAlignment) {
        @strongify(self)
        self.textAlignment = textAlignment;
        return self;
    };
}

- (UILabel *(^)(NSLineBreakMode))YLineBreakMode {
    @weakify(self)
    return ^UILabel *(NSLineBreakMode lineBreakMode) {
        @strongify(self)
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}

- (UILabel *(^)(NSAttributedString *))YAttributedText {
    @weakify(self)
    return ^UILabel *(NSAttributedString *attributedText) {
        @strongify(self)
        self.attributedText = attributedText;
        return self;
    };
}

- (UILabel *(^)(UIColor *))YHighlightedTextColor {
    @weakify(self)
    return ^UILabel *(UIColor *highlightedTextColor) {
        @strongify(self)
        self.highlightedTextColor = highlightedTextColor;
        return self;
    };
}

- (UILabel *(^)(NSInteger))YNumberOfLines {
    @weakify(self)
    return ^UILabel *(NSInteger numberOfLines) {
        @strongify(self)
        self.numberOfLines = numberOfLines;
        return self;
    };
}

- (UILabel *(^)(BOOL))YAdjustsFontSizeToFitWidth {
    @weakify(self)
    return ^UILabel *(BOOL adjustsFontSizeToFitWidth) {
        @strongify(self)
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (UILabel *(^)(UIBaselineAdjustment))YBaselineAdjustment {
    @weakify(self)
    return ^UILabel *(UIBaselineAdjustment baselineAdjustment) {
        @strongify(self)
        self.baselineAdjustment = baselineAdjustment;
        return self;
    };
}

@end
