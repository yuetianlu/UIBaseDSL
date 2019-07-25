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

- (UIControl *(^)(bool))YEnable {
    @weakify(self)
    return ^UIControl *(bool enable) {
        @strongify(self)
        self.enabled = enable;
        return self;
    };
}

- (UIControl *(^)(bool))YSelected {
    @weakify(self)
    return ^UIControl *(bool selected) {
        @strongify(self)
        self.selected = selected;
        return self;
    };
}

- (UIControl *(^)(bool))YHighlighted {
    @weakify(self)
    return ^UIControl *(bool highlighted) {
        @strongify(self)
        self.highlighted = highlighted;
        return self;
    };
}

@end
