//
//  ViewController.m
//  InterfaceBuilder
//
//  Created by zhangwei on 2018/1/29.
//  Copyright © 2018年 zhangwei. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray<NSString *> *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - UITableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"home_cell" forIndexPath:indexPath];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ModalViewController  *modalVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ModalViewController"];
    [self.navigationController pushViewController:modalVC animated:YES];
}

#pragma mark - 懒加载
- (NSArray<NSString *> *)dataSource {
    if (!_dataSource) {
        _dataSource = @[@"故事板跳转"];
    }
    return _dataSource;
}
@end
