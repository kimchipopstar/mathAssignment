//
//  QuestionManager.m
//  Math2
//
//  Created by Jaewon Kim on 2017-07-26.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _question = [NSMutableArray array];
    }
    return self;
}

-(NSString *)timeOutput{
    
    float totaltime = _total;
    float howmanytime = [_question count];
    float average = totaltime / howmanytime;
    NSString *string = [NSString stringWithFormat:@"total time: %fs, average time: %f",totaltime,average];
    
    return string;
    
}

@end
