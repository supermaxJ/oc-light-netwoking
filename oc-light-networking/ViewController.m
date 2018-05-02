//
//  ViewController.m
//  oc-light-networking
//
//  Created by 蒋宇 on 2018/5/2.
//  Copyright © 2018年 Snake_Jay. All rights reserved.
//

#import "ViewController.h"
#import "URLSessionClient.h"
#import "UserRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UserRequest *request = [UserRequest new];
    request.name = @"snakejay";
    [[URLSessionClient sharedInstance]
     send:request handler:^(User *response) {
         if (response) {
             NSLog(@"%@ from %@",
                   response.message,
                   response.name);
         }
     }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
