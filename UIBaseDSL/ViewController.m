//
//  ViewController.m
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/25.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
#import "UIBaseDSL.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *testView = UIView.new.YBackgroundColor([UIColor redColor])
                                 .YCornerRadius(10)
                                 .YFrame(CGRectMake(100, 100, 100, 50))
                                 .YAddToView(self.view);
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.YTitle(@"测试", UIControlStateNormal)
           .YTitleColor([UIColor blueColor], UIControlStateNormal)
           .YFrame(CGRectMake(100, 300, 100, 50))
           .YBackgroundColor([UIColor yellowColor])
           .YAddToView(self.view);
    @weakify(self)
    [testBtn setupTouchBlock:^{
        @strongify(self)
        [self presentViewController:[[TestViewController alloc] init] animated:YES completion:nil];
    }];
        // Do any additional setup after loading the view.
}


@end
