//
//  ViewController.h
//  QuizApp
//
//  Created by bpqd on 2015/12/18.
//  Copyright © 2015年 nakayama. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *problem;

- (IBAction)circleButton:(id)sender;

- (IBAction)crossButton:(id)sender;

@end
