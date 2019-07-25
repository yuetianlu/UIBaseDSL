//
//  UIScrollView+DSL.h
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (DSL)
- (UIScrollView *(^)(CGPoint))YContentOffset;
- (UIScrollView *(^)(CGSize))YContentSize;
- (UIScrollView *(^)(UIEdgeInsets))YContentInset;
- (UIScrollView *(^)(id<UIScrollViewDelegate>))YDelegate;
- (UIScrollView *(^)(BOOL))YBounces;
- (UIScrollView *(^)(BOOL))YShowsVerticalScrollIndicator;
- (UIScrollView *(^)(BOOL))YShowsHorizontalScrollIndicator;
- (UIScrollView *(^)(BOOL))YAlwaysBounceVertical;
- (UIScrollView *(^)(BOOL))YAlwaysBounceHorizontal;
- (UIScrollView *(^)(BOOL))YPagingEnabled;
- (UIScrollView *(^)(BOOL))YScrollEnabled;
- (UIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior))YContentInsetAdjustmentBehavior  API_AVAILABLE(ios(11.0));

@end
