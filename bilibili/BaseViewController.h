//
//  BaseViewController.h
//  bilibili
//
//  Created by yujing on 16/3/6.
//  Copyright © 2016年 yujing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
- (void)setTabItem:(NSString *)name image:(UIImage *)image selectedImage:(UIImage *)selectedImage;

- (UIBarButtonItem *)setNavigationItem:(NSString *)name  target:(UIViewController *)target selector:(SEL)sel tag:(int)tag;
@end
