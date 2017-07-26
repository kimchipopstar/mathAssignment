//
//  ScoreKeeper.m
//  Math2
//
//  Created by Jaewon Kim on 2017-07-25.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)score{
    float total = _right + _wrong;
    float percent = _right / total * 100;
    
    NSLog(@"score: %i right, %i wrong --- %.0f Percent",_right ,_wrong,percent);

}

@end
