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
            //NSLog(@"Input a String");
            fgets(inputChars, 255, stdin);
            //printf("You entered: %s\n",inputChars);
            NSString *objString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            //NSLog(@"your string is: %@",objString);
            
            NSString *parseInput = [objString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            //NSLog(@"parsed input is: %@",parseInput);
            
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
