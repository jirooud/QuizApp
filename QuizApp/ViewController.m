//
//  ViewController.m
//  QuizApp
//
//  Created by bpqd on 2015/12/18.
//  Copyright © 2015年 nakayama. All rights reserved.
//

#import "ViewController.h"

NSInteger quizCount;
NSInteger totalQuiz =5;
NSTimer *timer;

@interface ViewController (){
    NSMutableArray *numberAry;
    NSInteger questionNumber;
    NSInteger correctCount;
    BOOL answer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    numberAry = [NSMutableArray array];
    //配列に発生させたい範囲の乱数を格納する。
    for (int i = 0; i < 10; i++){
        [numberAry addObject:[NSString stringWithFormat:@"%d",i]];
        
    //[self indication];

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)indication{
    //ここに何か足すと良いのかな？
    [self collection];
}


- (void)oneSecond:(NSTimer*)timer{
    //self.problem.text = @"正解";
    [self nextQuiz];
}

//次のクイズ
- (void)nextQuiz{
    quizCount++;
    if(quizCount < totalQuiz){
        [self collection];
} else {
    NSLog(@"%d",(int)numberAry.count);
    NSLog(@"%d",(int)questionNumber);
    NSLog(@"%d",(int)correctCount);
    [self performSegueWithIdentifier:@"connect"sender:self];
    }
}

//テキストに表示する問題集10問くらい
- (void)collection{
    NSLog(@"%d",(int)numberAry.count);
    NSLog(@"%d",(int)questionNumber);
    NSLog(@"%d",(int)correctCount);
    if (numberAry.count != 0){
        //乱数を生成
        int n = arc4random() % numberAry.count;
        //乱数の数値にしたがって配列から文字列を取り出す
        //NSLog(@"%@", numberAry[n]);
        questionNumber = [numberAry[n]integerValue];
        //取り出した文字列を削除
        [numberAry removeObjectAtIndex:n];
    }else{
        NSLog(@"重複のない乱数はありません。");
    }
    switch(questionNumber){
        case 0:
            self.problem.text = @"問題a";
            answer=YES; break;
        case 1:
            self.problem.text = @"問題b";
            answer=YES; break;
        case 2:
            self.problem.text = @"問題c";
            answer=YES; break;
        case 3:
            self.problem.text = @"問題b";
            answer=YES; break;
        case 4:
            self.problem.text = @"問題e";
            answer=YES; break;
        case 5:
            self.problem.text = @"問題f";
            answer=NO; break;
        case 6:
            self.problem.text = @"問題g";
            answer=NO; break;
        case 7:
            self.problem.text = @"問題h";
            answer=NO; break;
        case 8:
            self.problem.text = @"問題i";
            answer=NO; break;
        case 9:
            self.problem.text = @"問題j";
            answer=NO; break;
    }
}

//ボタンの画像はあとで変える
- (IBAction)circleButton:(id)sender {
    NSLog(@"マルボタン");
    
    if (answer ==YES){
        correctCount++;
        self.problem.text = @"正解";
        timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(oneSecond:)userInfo:nil repeats:NO];
        //[self nextQuiz];
        //[self trueAnswer];
    //quizCount++;
        
        }else{
            self.problem.text = @"不正解";
            timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(oneSecond:)userInfo:nil repeats:NO];
            
    //[self nextQuiz];
        //[self falseAnswer];
    //[self nextQuiz];
        }

}

- (IBAction)crossButton:(id)sender {
    NSLog(@"バツボタン");
    
    if (answer ==NO){
        correctCount++;
        self.problem.text = @"正解";
        timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(oneSecond:)userInfo:nil repeats:NO];
        //[self nextQuiz];
        //[self trueAnswer];
    //quizCount++;
        
        }else{
            self.problem.text = @"不正解";
            timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(oneSecond:)userInfo:nil repeats:NO];
            //[self nextQuiz];
        
    //[self falseAnswer];
    //[self nextQuiz];
        }
}
@end
