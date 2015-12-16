//
//  ViewController.m
//  iOS_SN_Animation
//
//  Created by kiwi on 15/12/11.
//  Copyright © 2015年 kiwi. All rights reserved.
//

#import "ViewController.h"
#import "CoreAnimationEffect.h"
#import "senViewController.h"
#import "TriViewController.h"

@interface ViewController (){
}
@property (weak, nonatomic) IBOutlet UIView *viewss;
@property (strong, nonatomic)UIView *ffff;
@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ffff = [[UIView alloc]initWithFrame:self.viewss.bounds];
    self.ffff.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:self.ffff];
    
    [self.view sendSubviewToBack:self.ffff];
    

}
- (IBAction)action:(id)sender {
    

    
    
   CATransition *test = (CATransition *)[CoreAnimationEffect showAnimationType:@"cube"
                               withSubType:kCATransitionFromLeft
                                  duration:1.0f
                            timingFunction:kCAMediaTimingFunctionEaseInEaseOut
                                      view:self.view];
    [self.navigationController.view.layer addAnimation:test forKey:@"pushanimation"];
    senViewController *detailVC = [[senViewController alloc] init];
    [self.navigationController pushViewController:detailVC animated:NO];
    
    
//    [CoreAnimationEffect animationRotateAndScaleEffects:self.viewss];
//    [CoreAnimationEffect animationCubeFromRight:self.viewss];
    
    
//    [UIView transitionFromView:self.viewss
//                        toView:self.ffff
//                      duration:1
//                       options:UIViewAnimationOptionTransitionCurlUp
//                    completion:^(BOOL finished) {
//                    NSLog(@"finished");
//    }];

    
}
- (IBAction)modalAction:(id)sender {
    
    CATransition *test = (CATransition *)[CoreAnimationEffect showAnimationType:@"cube"
                                                                    withSubType:kCATransitionFromLeft
                                                                       duration:1.0f
                                                                 timingFunction:kCAMediaTimingFunctionEaseInEaseOut
                                                                           view:self.view];
    [self.navigationController.view.layer addAnimation:test forKey:@"pushanimation"];
    TriViewController *detailVC = [[TriViewController alloc] init];
//    [self.navigationController pushViewController:detailVC animated:NO];
    
    [self presentViewController:detailVC animated:YES completion:nil];
    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
