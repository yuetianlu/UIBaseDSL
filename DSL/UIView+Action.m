//
//  UIView+Action.m
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "UIView+Action.h"
#import <objc/runtime.h>
static const char viewBlockKey;

@implementation UIView (Action)

- (void)setupTouchBlock:(VoidClosure)block{
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    [self addGestureRecognizer:tap];
    if (block) {
        objc_setAssociatedObject(self, &viewBlockKey, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}
- (void)setupTouchBlock:(VoidClosure)block CancelsTouchesInView:(BOOL)cancelsTouchesInView{
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    tap.cancelsTouchesInView = cancelsTouchesInView;
    [self addGestureRecognizer:tap];
    if (block) {
        objc_setAssociatedObject(self, &viewBlockKey, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}
- (void)onTap:(id)sender{
    void(^block)(void) = objc_getAssociatedObject(self, &viewBlockKey);
    if (block) {
        block();
    }
}

- (void)addViewAction:(void (^)(UIView *view))block
{
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapAction:)];
    [self addGestureRecognizer:tap];
    if (block) {
        objc_setAssociatedObject(self, &viewBlockKey, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (void)onTapAction:(id)sender{
    void(^block)() = objc_getAssociatedObject(self, &viewBlockKey);
    if (block) {
        block(self);
    }
}

@end
