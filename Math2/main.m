//
//  main.m
//  Math2
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL play = YES;
        ScoreKeeper *scoreGive = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc]init];
        
        while (play) {
            
            
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc]init];
            [[questionManager question] addObject:additionQuestion];
            NSLog(@"%@",additionQuestion.question);
            InputHandler *giveMeInput = [[InputHandler alloc]init];
            NSString *parseInput = [giveMeInput handleIt];
            
            NSInteger strToInt = [parseInput intValue];
            
            
            if ([parseInput  isEqualToString: @"quit"]) {
                play = NO;
                continue;
            }
            
            if (strToInt == additionQuestion.answer) {
                NSLog(@"RIght!");
                scoreGive.right ++;
                
            } else {
                NSLog(@"Wrong!");
                scoreGive.wrong ++;
            }
            
            [scoreGive score];
            
            NSTimeInterval time = [additionQuestion answerTime];
            questionManager.total += time;
            NSString *showTimes = [questionManager timeOutput];
            NSLog(@"%@",showTimes);
            
            
            
            
            
            
            
            
            

            
        }
    }
    return 0;
}

