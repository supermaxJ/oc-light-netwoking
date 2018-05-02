//
//  UserRequest.h
//  oc-light-networking
//
//  Created by 蒋宇 on 2018/5/2.
//  Copyright © 2018年 Snake_Jay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Request.h"
#import "User.h"

@interface UserRequest : NSObject <Request>
@property (nonatomic, copy) NSString *name;
@property (nonatomic) Class<Response> Response;

@end
