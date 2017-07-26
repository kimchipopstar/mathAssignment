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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL play = YES;
        ScoreKeeper *scoreGive = [[ScoreKeeper alloc]init];
        
        while (play) {
            
            AdditionQuestion *questionInstant = [[AdditionQuestion alloc]init];
            NSLog(@"%@",questionInstant.question);
            
            InputHandler *giveMeInput = [[InputHandler alloc]init];
            NSString *parseInput = [giveMeInput handleIt];
            
            NSInteger strToInt = [parseInput intValue];
            
            
            if ([parseInput  isEqualToString: @"quit"]) {
                play = NO;
                continue;
            }
            
            if (strToInt == questionInstant.answer) {
                NSLog(@"RIght!");
                scoreGive.right ++;
                
            } else {
                NSLog(@"Wrong!");
                scoreGive.wrong ++;
            }
            
            [scoreGive score];
            

            
        }
    }
    return 0;
}

//NSCharacterSet *mycharSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//NSString *noNewLine = [inputString stringByTrimmingCharactersInSet:mycharSet];
