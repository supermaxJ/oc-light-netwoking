//
//  User.h
//  oc-light-networking
//
//  Created by 蒋宇 on 2018/5/2.
//  Copyright © 2018年 Snake_Jay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.h"

@interface User : NSObject <Response>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *message;

+ (User *)parse:(NSData *)data;
@end
