//
//  User.m
//  oc-light-networking
//
//  Created by 蒋宇 on 2018/5/2.
//  Copyright © 2018年 Snake_Jay. All rights reserved.
//

#import "User.h"

@implementation User
+ (User *)parse:(NSData *)data {
    NSError *error;
    NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];

    User *user = [User new];
    if (result[@"name"]) {
        user.name = result[@"name"];
    }
    if (result[@"message"]) {
        user.message = result[@"message"];
    }
    
    return user;
}
@end
