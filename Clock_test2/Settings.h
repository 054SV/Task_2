//
//  Settings.h
//  Clock_test2
//
//  Created by Sergey Romakin on 21.08.13.
//  Copyright (c) 2013 Sergey Romakin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface Settings : NSObject
{
    int a;
    int b;
}
- (id)init;
- (void)setA :(int)A andB :(int)B;
-(void) setS:(int)S;
@end
