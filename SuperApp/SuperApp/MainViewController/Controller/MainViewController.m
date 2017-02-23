//
//  MainViewController.m
//  SuperApp
//
//  Created by bob on 17/2/17.
//  Copyright © 2017年 bandeng. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation MainViewController

-(void)viewWillAppear:(BOOL)animated{
    //视图出现前判断是否显示首页
    [super viewWillAppear:animated];
    if (_isFirst) {
        self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
        self.navigationController.navigationBar.alpha = 0;
        [self initWithFirstView];
    }else{
        [self initWithSecondView];
    }
    self.tableView.delegate = self;
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.tableView.delegate = nil;
}

-(void)initWithFirstView{
//    self.navigationController
    _imageView = self.navigationController.navigationBar.subviews.firstObject;
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"01.png"] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (_isFirst) {
        CGFloat minAlphaOffset = -64;
        CGFloat maxAlphsOffset = 200;
        CGFloat offset = scrollView.contentOffset.y;
        CGFloat alpha = (offset - minAlphaOffset) /  (maxAlphsOffset - minAlphaOffset);
        _imageView.alpha = alpha;
        NSLog(@"%f",_imageView.alpha);
    }
}

//-(void)scrollView

-(void)initWithSecondView{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    _tableView.backgroundColor = [UIColor yellowColor];
    self.tableView.dataSource = self;
    [self.view addSubview:_tableView];
//    _imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"01.png"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
