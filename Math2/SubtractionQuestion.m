//
//  SubtractionQuestion.m
//  Math2
//
//  Created by Jaewon Kim on 2017-07-26.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    
    self.answer = self.leftValue - self.rightValue;
    self.question = [NSString stringWithFormat:@"%li - %li = ?", self.leftValue, self.rightValue];
}

@end
