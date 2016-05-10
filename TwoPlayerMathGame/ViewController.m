//
//  ViewController.m
//  TwoPlayerMathGame
//
//  Created by Susan Justice on 2016-05-09.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *equation;

@property (weak, nonatomic) IBOutlet UILabel *player1Lives;

@property (weak, nonatomic) IBOutlet UILabel *player2Lives;

@property (nonatomic) NSMutableString* input;


@end

@implementation ViewController


-(void)updateUI {
    self.equation.text = [NSString stringWithFormat:@"%d + %d = %@", self.gameModel.num1, self.gameModel.num2, self.input];
    self.player1Lives.text = [NSString stringWithFormat:@"Player 1: %d", self.gameModel.player1.lives];
    self.player2Lives.text = [NSString stringWithFormat:@"Player 2: %d", self.gameModel.player2.lives];
}

- (IBAction)button1:(id)sender {
    [self.input appendString: @"1"];
    [self updateUI];
}

- (IBAction)button2:(id)sender {
    [self.input appendString:@"2"];
    [self updateUI];
}

- (IBAction)button3:(id)sender {
    [self.input appendString:@"3"];
    [self updateUI];
}

- (IBAction)button4:(id)sender {
    [self.input appendString:@"4"];
    [self updateUI];
}

- (IBAction)button5:(id)sender {
    [self.input appendString:@"5"];
    [self updateUI];
}

- (IBAction)button6:(id)sender {
    [self.input appendString:@"6"];
    [self updateUI];
}

- (IBAction)button7:(id)sender {
    [self.input appendString:@"7"];
    [self updateUI];
}

- (IBAction)button8:(id)sender {
    [self.input appendString:@"8"];
    [self updateUI];
}

- (IBAction)button9:(id)sender {
    [self.input appendString:@"9"];
    [self updateUI];
}

- (IBAction)button0:(id)sender {
    [self.input appendString:@"0"];
    [self updateUI];
}

- (IBAction)buttonEnter:(id)sender {
    
    NSInteger userInput = [self.input integerValue];
    
    if ([self.gameModel answerIsCorrect:userInput]) {
        NSLog(@"Correct answer");
        
        
    } else {
        
        [self.gameModel currentPlayerAnsweredWrong];
        NSLog(@"incorrect answer");
    }
    
    
    
    if([self.gameModel endGame]){
        
        self.gameModel = [[GameModel alloc] init];
        self.input = [[NSMutableString alloc] init];
        
        
    } else {
        
        [self.gameModel NextTurn];
        [self.gameModel nextQuestion];
        self.input = [[NSMutableString alloc] init];
        
    }
    
    
    [self updateUI];
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameModel = [[GameModel alloc] init];
    self.input = [[NSMutableString alloc] init];
    
    
    [self updateUI];
  
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
