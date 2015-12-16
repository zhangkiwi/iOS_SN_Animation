//
//  senViewController.m
//  iOS_SN_Animation
//
//  Created by kiwi on 15/12/11.
//  Copyright © 2015年 kiwi. All rights reserved.
//

#import "senViewController.h"
#import "CoreAnimationEffect.h"

@interface senViewController ()

@end

@implementation senViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 120, 44);
    [button setBackgroundColor:[UIColor yellowColor]];
    [button addTarget:self action:@selector(popAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
}

- (void)popAction {

    CATransition *test = (CATransition *)[CoreAnimationEffect showAnimationType:@"cube"
                                                                    withSubType:kCATransitionFromLeft
                                                                       duration:1.0f
                                                                 timingFunction:kCAMediaTimingFunctionEaseInEaseOut
                                                                           view:self.view];
    [self.navigationController.view.layer addAnimation:test forKey:@"pushanimation"];
    [self.navigationController popViewControllerAnimated:YES];


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
