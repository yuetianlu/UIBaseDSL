//
//  UIControl+DSL.h
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (DSL)
- (UIControl *(^)(BOOL))YEnable;
- (UIControl *(^)(BOOL))YSelected;
- (UIControl *(^)(BOOL))YHighlighted;
@end

