//
//  Player.m
//  TwoPlayerMathGame
//
//  Created by Susan Justice on 2016-05-09.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _lives = 3;
    }
    return self;
}

@end
