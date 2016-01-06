//
//  resultViewController.m
//  QuizApp
//
//  Created by bpqd on 2015/12/19.
//  Copyright © 2015年 nakayama. All rights reserved.
//

#import "resultViewController.h"

@interface resultViewController ()

@end

@implementation resultViewController

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

//初期化させるdismiss
- (IBAction)returnButton:(id)sender {
    NSLog(@"戻るボタン");
    [self dismissResultView];
}

- (void)dismissResultView {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
