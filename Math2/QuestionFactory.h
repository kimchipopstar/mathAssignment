//
//  QuestionFactory.h
//  Math2
//
//  Created by Jaewon Kim on 2017-07-26.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

-(Question*) generateRandomQuestion;

@end
