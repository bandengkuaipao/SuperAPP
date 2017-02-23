//
//  LeftViewController.m
//  SuperApp
//
//  Created by bob on 17/2/17.
//  Copyright © 2017年 bandeng. All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()
@property (nonatomic ,strong) NSArray *dataArray;
@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = LeftDataArray;
    self.tableView.separatorStyle = UITableViewCellAccessoryNone;
    UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 150)];
    headerView.backgroundColor = [UIColor grayColor];
    UIView *footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 50)];
    footView.backgroundColor = [UIColor grayColor];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellString];
    self.tableView.tableHeaderView = headerView;
    self.tableView.tableFooterView = footView;
    [self.tableView reloadData];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellString forIndexPath:indexPath];
    cell.backgroundColor = [UIColor grayColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%ld",(long)indexPath.row);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


@end
