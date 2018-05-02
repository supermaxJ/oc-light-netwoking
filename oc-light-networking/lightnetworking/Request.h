//
//  Request.h
//  oc-light-networking
//
//  Created by 蒋宇 on 2018/5/2.
//  Copyright © 2018年 Snake_Jay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.h"

typedef NS_ENUM(NSUInteger, HTTPMethod) {
    HTTPMethod_GET,
    HTTPMethod_POST
};

@protocol Request <NSObject>

@property (nonatomic, copy, readonly) NSString *path;
@property (nonatomic, assign, readonly) HTTPMethod method;
@property (nonatomic, copy, readonly) NSDictionary *parameter;

@property (nonatomic) id<Response> Response;

@end
