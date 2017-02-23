//
//  NetOperation.m
//  SuperApp
//
//  Created by bob on 17/2/17.
//  Copyright © 2017年 bandeng. All rights reserved.
//

#import "NetOperation.h"

@implementation NetOperation

+(void)getRequestURL:(NSString *)URLString parameters:(id)parameters success:(success)success failure:(failure)failure{
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithBaseURL:[NSURL URLWithString:kHeadURL]];
    [manager GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

@end
