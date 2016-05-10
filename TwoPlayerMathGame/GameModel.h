//
//  GameModel.h
//  TwoPlayerMathGame
//
//  Created by Susan Justice on 2016-05-09.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"


@interface GameModel : NSObject

@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;
@property (nonatomic) Player *currentPlayer;
@property (nonatomic) int num1;
@property (nonatomic) int num2;




-(BOOL)answerIsCorrect:(int)userInput;

-(void)currentPlayerAnsweredWrong;

-(void)NextTurn;

-(void)nextQuestion;

-(BOOL)endGame;




@end
