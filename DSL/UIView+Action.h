//
//  UIView+Action.h
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^VoidClosure)(void);

@interface UIView (Action)
- (void)setupTouchBlock:(VoidClosure)block;//must using weak reference in block
- (void)setupTouchBlock:(VoidClosure)block CancelsTouchesInView:(BOOL)cancelsTouchesInView;//must using weak reference in block
- (void)addViewAction:(void (^)(UIView *view))block;//must using weak reference in block
@end
