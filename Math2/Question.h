//
//  AdditionQuestion.h
//  Math2
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject


@property NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property NSDate *startTime;
@property (nonatomic) NSDate *endTime;
@property NSInteger rightValue;
@property NSInteger leftValue;

-(NSTimeInterval) answerTime;

- (void)generateQuestion;

@end
