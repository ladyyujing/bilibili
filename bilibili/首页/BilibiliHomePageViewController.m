//
//  BilibiliHomePageViewController.m
//  bilibili
//
//  Created by yujing on 16/3/6.
//  Copyright © 2016年 yujing. All rights reserved.
//

#import "BilibiliHomePageViewController.h"

@interface BilibiliHomePageViewController ()<UIScrollViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UIButton *liveButton;
@property (weak, nonatomic) IBOutlet UIButton *recommandButton;
@property (weak, nonatomic) IBOutlet UIButton *bangumiButton;
@property (weak, nonatomic) IBOutlet UIButton *partitionButton;
@property (weak, nonatomic) IBOutlet UIView *lineView;
@property (strong,nonatomic) UIScrollView *scrollView;
@property (strong,nonatomic) UIView *mainView;
@property (strong,nonatomic) UIView *topView;

@end

@implementation BilibiliHomePageViewController{
    UIButton * _currentBtn;
   // UIView * _lineView;
}

-(void)awakeFromNib{
    
    [self setTabItem:@"首页" image:[UIImage imageNamed:@"ictab_homepage"]selectedImage:[UIImage imageNamed:@"ictab_homepage_selected"]];
    
    
    _currentBtn = self.recommandButton;
//    self.recommandButton.selected = YES;
    //self.lineView.center = CGPointMake(self.recommandButton.center.x, self.lineView.center.y);
//    [UIView animateWithDuration:0.2 animations:^{
//         self.lineView.center = CGPointMake(self.recommandButton.center.x, self.lineView.center.y);
//    }];

   
    UIBarButtonItem *liveItem = [self setNavigationItem:@"直播" target:self selector:@selector(buttonClick:) tag:100];
    liveItem.customView.backgroundColor = [UIColor yellowColor];
    UIBarButtonItem *recommandItem = [self setNavigationItem:@"推荐" target:self selector:@selector(buttonClick:) tag:101];
    recommandItem.customView.backgroundColor = [UIColor yellowColor];
    UIBarButtonItem *bangumiItem = [self setNavigationItem:@"番剧" target:self selector:@selector(buttonClick:) tag:102];
    UIBarButtonItem *partitionItem = [self setNavigationItem:@"分区" target:self selector:@selector(buttonClick:) tag:103];
    UIBarButtonItem * spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    //self.navigationController.navigationBar.
    
   // self.navigationItem.leftBarButtonItems = @[liveItem,spaceItem,recommandItem,spaceItem,bangumiItem,spaceItem,partitionItem];
    
   // [self.view addSubview:_lineView];
    
    UIBarButtonItem * space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceItem.width = -10;
    self.navigationItem.rightBarButtonItems = @[space];
}
- (IBAction)buttonClick:(UIButton *)sender {
    _currentBtn.selected = NO;
    sender.selected = YES;
    _currentBtn = sender;
    self.lineView.center = CGPointMake(sender.center.x, self.lineView.center.y);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configScorollView];
    [self configCollectionView];
    
    
}
-(void)configScorollView{
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, kWidth, kHeight-64)];
    [self.mainView addSubview:self.scrollView];
    self.scrollView.delegate = self;
    self.scrollView.contentSize = CGSizeMake(kWidth * 4, kHeight-64);
    //scrollView.contentOffset = CGPointMake(kWidth, kHeight - 64);
}
-(void)configCollectionView{
    self.mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kWidth, kHeight-64)];
    [self.scrollView addSubview:self.mainView];
    
    self.topView = [[UIView alloc] initWithFrame:CGRectZero];
    [self.mainView addSubview:self.topView];
    
    NSLayoutConstraint *mainViewHeight= [NSLayoutConstraint constraintWithItem:self.topView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.mainView attribute:NSLayoutAttributeHeight multiplier:740/1207.0 constant:0];
    NSLayoutConstraint *mainViewWidth = [NSLayoutConstraint constraintWithItem:self.topView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.mainView attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    NSLayoutConstraint *mainViewTop = [NSLayoutConstraint constraintWithItem:self.topView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.mainView attribute:NSLayoutAttributeTop multiplier:1 constant:0];
    NSLayoutConstraint *mainViewLeft = [NSLayoutConstraint constraintWithItem:self.topView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.mainView attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
    [self.mainView addConstraints:@[mainViewHeight,mainViewLeft,mainViewTop,mainViewWidth]];
    
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    [layout setScrollDirection:UICollectionViewScrollDirectionVertical];
    layout.headerReferenceSize = CGSizeMake(kWidth, 100);
    UICollectionView *collection = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    
    
}
#pragma mark UIScrollView delegate

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
