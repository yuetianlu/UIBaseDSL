//
//  TestViewController.m
//  UIBaseDSL
//
//  Created by yuetianlu on 2019/7/26.
//  Copyright © 2019 yuetianlu. All rights reserved.
//

#import "TestViewController.h"
#import "UIBaseDSL.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)dealloc
{
    NSLog(@"%@----dealloc", NSStringFromClass([self class]));
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.YBackgroundColor([UIColor whiteColor]);
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.YTitle(@"测试", UIControlStateNormal)
    .YTitleColor([UIColor blueColor], UIControlStateNormal)
    .YFrame(CGRectMake(100, 300, 100, 50))
    .YBackgroundColor([UIColor yellowColor])
    .YAddToView(self.view);
    @weakify(self)
    [testBtn setupTouchBlock:^{
        @strongify(self)
        [self dismissViewControllerAnimated:YES completion:nil];
    }];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
