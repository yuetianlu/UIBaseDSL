//
//  UIControl+DSL.h
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (DSL)
- (UIControl *(^)(bool))YEnable;
- (UIControl *(^)(bool))YSelected;
- (UIControl *(^)(bool))YHighlighted;
@end
