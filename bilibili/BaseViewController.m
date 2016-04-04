//
//  BaseViewController.m
//  bilibili
//
//  Created by yujing on 16/3/6.
//  Copyright © 2016年 yujing. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)setTabItem:(NSString *)name image:(UIImage *)image selectedImage:(UIImage *)selectedImage{
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:name image:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:kColor(215, 81, 121)} forState:UIControlStateSelected];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:kColor(166, 166, 166)} forState:UIControlStateNormal];
    self.tabBarItem = item;
    
}

-(UIBarButtonItem *)setNavigationItem:(NSString *)name  target:(UIViewController *)target selector:(SEL)sel tag:(int)tag{
    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    itemButton.tag = tag;
    if (tag == 101) {
        itemButton.selected = YES;
    }
    [itemButton addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    [itemButton setTitle:name forState:UIControlStateNormal];
    itemButton.titleLabel.font = [UIFont systemFontOfSize:14];
    [itemButton setTitleColor:kColor(215, 81, 121) forState:UIControlStateSelected];
    [itemButton setTitleColor:kColor(166, 166, 166) forState:UIControlStateNormal];
    itemButton.frame = CGRectMake(0, 0, 40, 25);
    UIBarButtonItem *liveItem = [[UIBarButtonItem alloc] initWithCustomView:itemButton];
    return liveItem;
    
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
