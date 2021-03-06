//
//  main.m
//  Math2
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL play = YES;
        ScoreKeeper *scoreGive = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc]init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc]init];
        
        while (play) {
            
            
            Question *question = [questionFactory generateRandomQuestion];
            [[questionManager question] addObject:question];
            NSLog(@"%@",question.question);
            InputHandler *giveMeInput = [[InputHandler alloc]init];
            NSString *parseInput = [giveMeInput handleIt];
            
            NSInteger strToInt = [parseInput intValue];
            
            
            if ([parseInput  isEqualToString: @"quit"]) {
                play = NO;
                continue;
            }
            
            if (strToInt == question.answer) {
                NSLog(@"RIght!");
                scoreGive.right ++;
                
            } else {
                NSLog(@"Wrong!");
                scoreGive.wrong ++;
            }
            
            [scoreGive score];
            
            NSTimeInterval time = [question answerTime];
            questionManager.total += time;
            NSString *showTimes = [questionManager timeOutput];
            NSLog(@"%@",showTimes);
            
            
            
            
            
            
            
            
            

            
        }
    }
    return 0;
}

