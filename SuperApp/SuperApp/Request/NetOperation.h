//
//  NetOperation.h
//  SuperApp
//
//  Created by bob on 17/2/17.
//  Copyright © 2017年 bandeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetOperation : NSObject

typedef void (^success)(id reponseObject);
typedef void (^failure)(NSError *error);

+(void)getRequestURL:(NSString *)URLString parameters:(id)parameters success:(success)success failure:(failure)failure;

@end
