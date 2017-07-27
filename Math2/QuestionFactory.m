//
//  QuestionFactory.m
//  Math2
//
//  Created by Jaewon Kim on 2017-07-26.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "QuestionFactory.h"


@implementation QuestionFactory

-(Question*) generateRandomQuestion{

    NSArray *questionSubclassName = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplecationQuestion", @"DivisionQuestion"];
    NSInteger randomIndex = arc4random_uniform(3);
    
    NSString *randomQuestionString = [questionSubclassName objectAtIndex:randomIndex];
    
    Question *randomQuestion = [[NSClassFromString(randomQuestionString) alloc]init];
    
    return randomQuestion;
    
}

@end
