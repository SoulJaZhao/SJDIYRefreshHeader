//
//  SJViewController.m
//  SJDIYRefreshHeader
//
//  Created by superzhaolong@126.com on 12/04/2017.
//  Copyright (c) 2017 superzhaolong@126.com. All rights reserved.
//

#import "SJViewController.h"
#import <SJDIYRefreshHeader/SJDIYRefreshHeader.h>

@interface SJViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation SJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tableView.mj_header = [SJDIYRefreshHeader headerWithRefreshingBlock:^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.tableView.mj_header endRefreshing];
        });
    }];
    [self.tableView.mj_header beginRefreshing];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
