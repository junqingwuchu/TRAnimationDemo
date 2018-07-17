//
//  ViewController.m
//  TRAnimationDemo
//
//  Created by book on 2017/7/17.
//  Copyright © 2017年 Tracky. All rights reserved.
//

#import "ViewController.h"
#import "TRView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TRView *view = [[TRView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
