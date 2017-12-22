//
//  ViewController.m
//  LZSegmentView
//
//  Created by 李展 on 2017/12/22.
//  Copyright © 2017年 JohnLee. All rights reserved.
//

#import "ViewController.h"
#import "LZSegmentView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSMutableArray *vcArray = [NSMutableArray array];
    for (int i = 0; i<10; i++) {
        UIViewController *vc = [[UIViewController alloc]init];
        vc.title = [NSString stringWithFormat:@"%d",i];
        vc.view.backgroundColor = [UIColor colorWithRed:i*25/255.f green:i*25/255.f blue:i*25/255.f alpha:1];
        [vcArray addObject:vc];
    }
    LZSegmentView *segmentView = [[LZSegmentView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) andControllers:vcArray];
    [self.view addSubview:segmentView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
