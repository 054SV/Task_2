//
//  SecondViewController.h
//  Clock_test2
//
//  Created by Sergey Romakin on 21.08.13.
//  Copyright (c) 2013 Sergey Romakin. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *Switch;
- (IBAction)Style3:(id)sender;
- (IBAction)Style2:(id)sender;
- (IBAction)Style1:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *SmallLabel;
@property (weak, nonatomic) NSNumber* i;

-(void) UpdateTextsmall:(NSInteger) Index;
@property (weak, nonatomic) IBOutlet UILabel *Label;
@property (weak, nonatomic) IBOutlet UIImageView *image2;

@end
