//
//  ViewController.m
//  QuizApp
//
//  Created by bpqd on 2015/12/18.
//  Copyright © 2015年 nakayama. All rights reserved.
//

#import "ViewController.h"

NSInteger quizCount;
//確認用で仮に9
NSInteger totalQuiz =9;

@interface ViewController (){
    NSMutableArray *numberAry;
    NSInteger questionNumber;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self indication];
    numberAry = [NSMutableArray array];
    //配列に発生させたい範囲の乱数を格納する。
    for (int i = 0; i < 10; i++){
        [numberAry addObject:[NSString stringWithFormat:@"%d",i]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)indication{
    [self collection];
}

/*
- (void)answer {
        self.problem.text = @"正解";
        self.problem.text = @"不正解";
        [self nextQuiz];
    }
*/

//次のクイズ
- (void)nextQuiz{
    //1問ごとに答えと6問目に結果を表示したい
    quizCount++;
    if(quizCount < totalQuiz){
        //[self randomQuiz];
        [self collection];
} else {
    [self performSegueWithIdentifier:@"connect"sender:self];
    }
}

//テキストに表示する問題集10問くらい、今の問題点最初が必ずaになってしまう
- (void)collection{
    if (numberAry.count != 0){
        //乱数を生成
        int n = arc4random() % numberAry.count;
        //乱数の数値にしたがって配列から文字列を取り出す
        NSLog(@"%@", numberAry[n]);
        questionNumber = [numberAry[n]integerValue];
        //取り出した文字列を削除
        [numberAry removeObjectAtIndex:n];
    }else{
        NSLog(@"重複のない乱数はありません。");
    }
    switch(questionNumber){
        case 0:
            self.problem.text = @"問題a";
            break;
        case 1:
            self.problem.text = @"問題b";
            break;
        case 2:
            self.problem.text = @"問題c";
            break;
        case 3:
            self.problem.text = @"問題b";
            break;
        case 4:
            self.problem.text = @"問題e";
            break;
        case 5:
            self.problem.text = @"問題f";
            break;
        case 6:
            self.problem.text = @"問題g";
            break;
        case 7:
            self.problem.text = @"問題h";
            break;
        case 8:
            self.problem.text = @"問題i";
            break;
        case 9:
            self.problem.text = @"問題j";
            break;
    }
}

//ボタンの画像はあとで変える
- (IBAction)circleButton:(id)sender {
    NSLog(@"マルボタン");
    
    
    //quizCount++;
    //あとでネクストクイズの前に答えネクストはここでは消す
    //[self answer]
    [self nextQuiz];
}

- (IBAction)crossButton:(id)sender {
    NSLog(@"バツボタン");
    
    //quizCount++;
    [self nextQuiz];
}
@end
