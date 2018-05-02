//
//  Client.h
//  oc-light-networking
//
//  Created by 蒋宇 on 2018/5/2.
//  Copyright © 2018年 Snake_Jay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Request.h"

@protocol Client <NSObject>
@property (nonatomic, copy, readonly) NSString *host;
- (void)send:(id<Request>)request handler:(void (^)(id<Response> response))handler;
@end
