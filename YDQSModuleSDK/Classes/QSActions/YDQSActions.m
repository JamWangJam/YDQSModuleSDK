//
//  YDQSActions.m
//  iOSProduct
//
//  Created by Jam 王 on 2019/12/5.
//  Copyright © 2019 Jam 王. All rights reserved.
//

#import "YDQSActions.h"
#import "YDQSOtherVC.H"

@implementation YDQSActions
- (UIViewController *)nativeFetchDetailViewController:(NSDictionary *)params {
    
    
    
        // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
        YDQSOtherVC *viewController = [[YDQSOtherVC alloc] init];
      //  viewController.valueLabel.text = params[@"key"];
        return viewController;
    
}
- (id)showAlert:(NSDictionary *)params {

      YDQSOtherVC *viewController = [[YDQSOtherVC alloc] init];
    [viewController backBlock:params];
   
      return viewController;
}
@end
