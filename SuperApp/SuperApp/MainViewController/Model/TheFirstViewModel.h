//
//  TheFirstViewModel.h
//  SuperApp
//
//  Created by bob on 17/2/23.
//  Copyright © 2017年 bandeng. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface TheFirstViewModel : JSONModel

@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSDictionary *stories;

@end
