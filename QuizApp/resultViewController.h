//
//  resultViewController.h
//  QuizApp
//
//  Created by bpqd on 2015/12/19.
//  Copyright © 2015年 nakayama. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface resultViewController : UIViewController

@property NSInteger response;

@property (weak, nonatomic) IBOutlet UITextView *result;

- (IBAction)returnButton:(id)sender;

@end