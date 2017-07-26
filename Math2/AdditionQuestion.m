//
//  AdditionQuestion.m
//  Math2
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger numOne = (arc4random() % 90) + 10;
        NSInteger numTwo = (arc4random() % 90) + 10;
        
        _answer = numOne + numTwo;
        _question = [NSString stringWithFormat:@"%li + %li = ?", numOne, numTwo];
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer{
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval) answerTime{
    
    NSTimeInterval howLong = [_endTime timeIntervalSinceDate:_startTime];
    
    return howLong;
    
    
}

@end
