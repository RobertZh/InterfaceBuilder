//
//  ModalViewController.m
//  InterfaceBuilder
//
//  Created by zhangwei on 2018/1/29.
//  Copyright © 2018年 zhangwei. All rights reserved.
//

#import "ModalViewController.h"
#import "StoryboardIdViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)pushVCByStoryboardId:(UIButton *)sender {
    StoryboardIdViewController *idVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"StoryboardIdViewController"];
    [self.navigationController pushViewController:idVC animated:YES];
}

- (IBAction)myUnwindAction:(UIStoryboardSegue *)unwindSegue {
    NSLog(@"『identifier』 : %@ |『destinationViewController』 : %@ |『sourceViewController』 : %@", unwindSegue.identifier, unwindSegue.destinationViewController, unwindSegue.sourceViewController);
}
@end
