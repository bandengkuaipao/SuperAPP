//
//  MainViewController.h
//  SuperApp
//
//  Created by bob on 17/2/17.
//  Copyright © 2017年 bandeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
@property (nonatomic ,strong) UIImageView *imageView;
@property (nonatomic ,strong) UITableView *tableView;
//判断是否显示首页
@property (nonatomic ,assign) BOOL isFirst;
@property (nonatomic ,assign) NSString *URLString;
@property (nonatomic ,assign) NSMutableArray *dataArray;

@end
