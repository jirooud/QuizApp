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
    [self resultViewText];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)resultViewText{
    NSLog(@"%d",(int)_response);
    switch(_response){
        case 0:
            self.result.text = @"全問不正解";
            break;
        case 1:
            self.result.text = @"1問正解";
            break;
        case 2:
            self.result.text = @"2問正解";
            break;
        case 3:
            self.result.text = @"3問正解";
            break;
        case 4:
            self.result.text = @"4問正解";
            break;
        case 5:
            self.result.text = @"5問正解";
            break;
    }
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
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end