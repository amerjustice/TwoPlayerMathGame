//
//  GameModel.m
//  TwoPlayerMathGame
//
//  Created by Susan Justice on 2016-05-09.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel



- (instancetype)init
{
    self = [super init];
    if (self) {
        _player1 = [[Player alloc] init];
        _player2 = [[Player alloc] init];
        _num1 =arc4random_uniform(20);
        _num2 =arc4random_uniform(20);
        _currentPlayer = _player1;
    }
    

    return self;
}

-(BOOL)answerIsCorrect:(int)userInput {
    
    int answer = self.num1 + self.num2;
    
    return answer == userInput;
}

-(void)currentPlayerAnsweredWrong {
    
    
    self.currentPlayer.lives--;
    }

-(void)NextTurn {
    
    if (self.currentPlayer == self.player1) {
        self.currentPlayer = self.player2;
    }else {
        self.currentPlayer = self.player1;
    }


}

-(void)nextQuestion {
    self.num1 = arc4random_uniform(20);
    self.num2 = arc4random_uniform(20);
    
}

-(BOOL)endGame {
    if(self.currentPlayer.lives == 0){
        return YES;
    } else {
        return NO;
        
    }
    
}




@end
