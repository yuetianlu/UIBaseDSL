//
//  UIScrollView+DSL.m
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "UIScrollView+DSL.h"
#import "YTMacro.h"

@implementation UIScrollView (DSL)

- (UIScrollView *(^)(CGPoint))YContentOffset {
    @weakify(self)
    return ^UIScrollView *(CGPoint contentOffset) {
        @strongify(self)
        self.contentOffset = contentOffset;
        return self;
    };
}

- (UIScrollView *(^)(CGSize))YContentSize {
    @weakify(self)
    return ^UIScrollView *(CGSize contentSize) {
        @strongify(self)
        self.contentSize = contentSize;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets))YContentInset {
    @weakify(self)
    return ^UIScrollView *(UIEdgeInsets contentInset) {
        @strongify(self)
        self.contentInset = contentInset;
        return self;
    };
}

- (UIScrollView *(^)(id<UIScrollViewDelegate>))YDelegate {
    @weakify(self)
    return ^UIScrollView *(id<UIScrollViewDelegate> delegate) {
        @strongify(self)
        self.delegate = delegate;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))YBounces {
    @weakify(self)
    return ^UIScrollView *(BOOL bounces) {
        @strongify(self)
        self.bounces = bounces;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))YShowsVerticalScrollIndicator {
    @weakify(self)
    return ^UIScrollView *(BOOL showsVerticalScrollIndicator) {
        @strongify(self)
        self.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))YShowsHorizontalScrollIndicator {
    @weakify(self)
    return ^UIScrollView *(BOOL showsHorizontalScrollIndicator) {
        @strongify(self)
        self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))YAlwaysBounceVertical {
    @weakify(self)
    return ^UIScrollView *(BOOL alwaysBounceVertical) {
        @strongify(self)
        self.alwaysBounceVertical = alwaysBounceVertical;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))YAlwaysBounceHorizontal {
    @weakify(self)
    return ^UIScrollView *(BOOL alwaysBounceHorizontal) {
        @strongify(self)
        self.alwaysBounceHorizontal = alwaysBounceHorizontal;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))YPagingEnabled {
    @weakify(self)
    return ^UIScrollView *(BOOL pagingEnabled) {
        @strongify(self)
        self.pagingEnabled = pagingEnabled;
        return self;
    };
}

- (UIScrollView *(^)(BOOL))YScrollEnabled {
    @weakify(self)
    return ^UIScrollView *(BOOL scrollEnabled) {
        @strongify(self)
        self.scrollEnabled = scrollEnabled;
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior))YContentInsetAdjustmentBehavior  API_AVAILABLE(ios(11.0)){
    @weakify(self)
    return ^UIScrollView *(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior) {
        @strongify(self)
        if (@available(iOS 11.0, *)) {
            self.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior;
        } else {
            // Fallback on earlier versions
        }
        return self;
    };
}
@end
