//
//  TheLatestStories.h
//  SuperApp
//
//  Created by bob on 17/2/23.
//  Copyright © 2017年 bandeng. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface TheLatestStories : JSONModel

@property (nonatomic , strong) NSArray *imageArray;
@property (nonatomic , assign) NSInteger type;
@property (nonatomic , assign) NSInteger list_id;
@property (nonatomic , strong) NSString *ga_prefix;
@property (nonatomic , strong) NSString *title;

@end
