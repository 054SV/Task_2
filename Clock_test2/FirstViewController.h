//
//  FirstViewController.h
//  Clock_test2
//
//  Created by Sergey Romakin on 21.08.13.
//  Copyright (c) 2013 Sergey Romakin. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *MyLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak,nonatomic) NSNumber* Style;
@property (weak,nonatomic) NSNumber* Seconds;

-(void)UpdateTime;
-(void)ChangeTextStyle;


@end
