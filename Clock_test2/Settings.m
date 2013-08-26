//
//  Settings.m
//  Clock_test2
//
//  Created by Sergey Romakin on 21.08.13.
//  Copyright (c) 2013 Sergey Romakin. All rights reserved.
//

#import "Settings.h"

@implementation Settings

- (id)init {
    self = [super init];
    if(self){
        a = 0;
        b = 0;
    }
    return self;
}
- (void)setA :(int)A andB :(int)B{
    a = A;
    b = B;
}

-(void) setS:(int)S
{
    int s = S;
}

@end
