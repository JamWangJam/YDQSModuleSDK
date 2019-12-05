//
//  YDQSOtherVC.m
//  iOSProduct
//
//  Created by Jam 王 on 2019/12/5.
//  Copyright © 2019 Jam 王. All rights reserved.
//

#import "YDQSOtherVC.h"
typedef void (^CTUrlRouterCallbackBlock)(NSDictionary *info);
@interface YDQSOtherVC ()
@property (nonatomic, copy) CTUrlRouterCallbackBlock callback;
@end

@implementation YDQSOtherVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"签收业务组件";
    self.view.backgroundColor = [UIColor blackColor];
    UIButton * backBtn = [UIButton buttonWithType:0];
    [backBtn setTitle:@"confirmAction" forState:0];
    [backBtn setTitleColor:[UIColor redColor] forState:0];
    [backBtn addTarget:self action:@selector(backBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    
}

- (void)backBlock:(NSDictionary *)params{
    self.callback = params[@"confirmAction"];
    
}


- (void)backBtnClick{
    [self.navigationController popViewControllerAnimated:YES];
    
    if (self.callback) {
       self.callback(@{@"alertAction":@"测试点击返回按钮 "});
    }
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
