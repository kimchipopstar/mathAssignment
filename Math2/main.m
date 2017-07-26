//
//  main.m
//  Math2
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL play = YES;
        while (play) {
            
            AdditionQuestion *questionInstant = [[AdditionQuestion alloc]init];
            NSLog(@"%@",questionInstant.question);
            
            char inputChars[255];
            
            fgets(inputChars, 255, stdin);
            
            NSString *objString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            
            
            NSString *parseInput = [objString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            
            NSInteger strToInt = [parseInput intValue];
            
            if ([parseInput  isEqualToString: @"quit"]) {
                play = NO;
                continue;
            }
            
            if (strToInt == questionInstant.answer) {
                NSLog(@"RIght!");
            } else {
                NSLog(@"Wrong!");
            }
            
            

            
        }
    }
    return 0;
}

//NSCharacterSet *mycharSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//NSString *noNewLine = [inputString stringByTrimmingCharactersInSet:mycharSet];
