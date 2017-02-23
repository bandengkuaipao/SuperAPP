//
//  TheLatestStories.m
//  SuperApp
//
//  Created by bob on 17/2/23.
//  Copyright © 2017年 bandeng. All rights reserved.
//

#import "TheLatestStories.h"

@implementation TheLatestStories

+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc]initWithModelToJSONDictionary:@{@"id":@"list_id"}];
}

@end
