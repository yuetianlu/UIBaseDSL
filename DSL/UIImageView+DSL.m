//
//  UIImageView+DSL.m
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "UIImageView+DSL.h"
#import "YTMacro.h"

@implementation UIImageView (DSL)

- (UIImageView *(^)(UIImage *))YImage {
    @weakify(self)
    return ^UIImageView *(UIImage *image) {
        @strongify(self)
        self.image = image;
        return self;
    };
}

- (UIImageView *(^)(UIImage *))YHighlightedImage {
    @weakify(self)
    return ^UIImageView *(UIImage *image) {
        @strongify(self)
        self.highlightedImage = image;
        return self;
    };
}

@end
