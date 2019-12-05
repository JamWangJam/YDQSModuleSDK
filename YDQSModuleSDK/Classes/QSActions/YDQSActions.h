//
//  YDQSActions.h
//  iOSProduct
//
//  Created by Jam 王 on 2019/12/5.
//  Copyright © 2019 Jam 王. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YDQSActions : NSObject
- (UIViewController *)nativeFetchDetailViewController:(NSDictionary *)params;
- (id)showAlert:(NSDictionary *)params;
@end

NS_ASSUME_NONNULL_END
