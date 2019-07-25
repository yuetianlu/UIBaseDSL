//
//  UIControl+DSL.m
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "UIControl+DSL.h"
#import "YTMacro.h"

@implementation UIControl (DSL)

- (UIControl *(^)(BOOL))YEnable {
    @weakify(self)
    return ^UIControl *(BOOL enable) {
        @strongify(self)
        self.enabled = enable;
        return self;
    };
}

- (UIControl *(^)(BOOL))YSelected {
    @weakify(self)
    return ^UIControl *(BOOL selected) {
        @strongify(self)
        self.selected = selected;
        return self;
    };
}

- (UIControl *(^)(BOOL))YHighlighted {
    @weakify(self)
    return ^UIControl *(BOOL highlighted) {
        @strongify(self)
        self.highlighted = highlighted;
        return self;
    };
}

@end
