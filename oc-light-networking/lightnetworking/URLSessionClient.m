//
//  URLSessionClient.m
//  oc-light-networking
//
//  Created by 蒋宇 on 2018/5/2.
//  Copyright © 2018年 Snake_Jay. All rights reserved.
//

#import "URLSessionClient.h"

@implementation URLSessionClient
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static URLSessionClient *_instance;
    dispatch_once(&onceToken, ^{
        _instance = [[URLSessionClient alloc] init];
    });
    return _instance;
}

- (NSString *)host {
    return @"http://127.0.0.1:5000";
}

- (void)send:(id<Request>)request handler:(void (^)(id<Response>))handler {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@",
                                          self.host, request.path]];
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];
    urlRequest.HTTPMethod = [self methodName:request.method];
    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        id<Response> res = [request.Response parse:data];
        if (res) {
            dispatch_async(dispatch_get_main_queue(), ^{
                handler(res);
            });
        } else {
            dispatch_async(dispatch_get_main_queue(), ^{
                handler(nil);
            });
        }
    }];
    [task resume];
}

- (NSString *)methodName:(HTTPMethod)method {
    NSString *methodName;
    switch (method) {
        case HTTPMethod_GET:
            methodName = @"GET";
            break;
        case HTTPMethod_POST:
            methodName = @"POST";
        default:
            methodName = @"GET";
            break;
    }
    return methodName;
}
@end
