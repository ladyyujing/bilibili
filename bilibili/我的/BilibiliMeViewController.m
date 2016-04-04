//
//  BilibiliMeViewController.m
//  bilibili
//
//  Created by yujing on 16/3/6.
//  Copyright © 2016年 yujing. All rights reserved.
//

#import "BilibiliMeViewController.h"

@interface BilibiliMeViewController ()

@end

@implementation BilibiliMeViewController

-(void)awakeFromNib{
    
    [self setTabItem:@"我的" image:[UIImage imageNamed:@"ictab_me"]selectedImage:[UIImage imageNamed:@"ictab_me_selected"]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
