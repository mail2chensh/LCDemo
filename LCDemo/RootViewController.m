//
//  RootViewController.m
//  XVOD
//
//  Created by dev on 16/4/27.
//  Copyright © 2016年 Chensh. All rights reserved.
//

#import "RootViewController.h"
#import "LCVodUIViewController.h"


@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonDidTouch:(id)sender {
    
    LCVodUIViewController *VC = [[LCVodUIViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
    
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
