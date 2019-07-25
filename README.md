# UIBaseDSL

示例：

```
UIView *testView = UIView.new.YBackgroundColor([UIColor redColor]).YCornerRadius(10).YFrame(CGRectMake(100, 100, 100, 50)).YAddToView(self.view);
    
UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
testBtn.YTitle(@"测试", UIControlStateNormal).YTitleColor([UIColor blueColor], UIControlStateNormal).YFrame(CGRectMake(100, 300, 100, 50)).YBackgroundColor([UIColor yellowColor]).YAddToView(self.view);
    
```
