//
//  InputHandler.m
//  Math2
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString*)handleIt{
    
    char inputChars[255];
    
    fgets(inputChars, 255, stdin);
    
    NSString *objString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    
    NSString *parseInput = [objString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return parseInput;
}

@end
