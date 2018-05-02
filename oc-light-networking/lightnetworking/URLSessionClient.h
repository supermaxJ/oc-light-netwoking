//
//  URLSessionClient.h
//  oc-light-networking
//
//  Created by 蒋宇 on 2018/5/2.
//  Copyright © 2018年 Snake_Jay. All rights reserved.
//

#import "Client.h"

@interface URLSessionClient : NSObject <Client>
+ (instancetype)sharedInstance;
@end
