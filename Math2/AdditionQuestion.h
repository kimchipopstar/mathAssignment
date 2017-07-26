//
//  AdditionQuestion.h
//  Math2
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject


@property NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property NSDate *startTime;
@property (nonatomic) NSDate *endTime;

-(NSTimeInterval) answerTime;

@end
