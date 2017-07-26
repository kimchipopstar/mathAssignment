//
//  QuestionManager.h
//  Math2
//
//  Created by Jaewon Kim on 2017-07-26.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property NSMutableArray *question;
@property NSTimeInterval total;

-(NSString *)timeOutput;

@end
