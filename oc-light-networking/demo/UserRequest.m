//
//  UserRequest.m
//  oc-light-networking
//
//  Created by 蒋宇 on 2018/5/2.
//  Copyright © 2018年 Snake_Jay. All rights reserved.
//

#import "UserRequest.h"

@implementation UserRequest
- (NSString *)path {
    return [NSString stringWithFormat:@"/user/%@",
            self.name];
}

- (HTTPMethod)method {
    return HTTPMethod_GET;
}

- (NSDictionary *)parameter {
    return @{};
}

- (Class<Response>)Response {
    return [User class];
}
@end
