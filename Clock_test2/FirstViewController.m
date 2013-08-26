//
//  FirstViewController.m
//  Clock_test2
//
//  Created by Sergey Romakin on 21.08.13.
//  Copyright (c) 2013 Sergey Romakin. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"


@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize Style;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _image.image = [UIImage imageNamed:@"IMG_0415.JPG"];
    self.Style = [NSNumber numberWithInt:0];
    self.Seconds = [NSNumber numberWithInt:0];
    //[self UpdateTime];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewWillAppear:(BOOL)animated {
    AppDelegate* appdelegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
    self.Style = appdelegate.Theme;
    [self ChangeTextStyle];
    [self UpdateTime];
}



-(void) UpdateTime 
{
    NSDateFormatter * dateformat = [[NSDateFormatter alloc] init];
    if ([_Seconds intValue]==0) {
    [dateformat setDateFormat:@"hh:mm:ss"];
    } else {
        [dateformat setDateFormat:@"hh:mm"];
    }
    _MyLabel.text = [dateformat stringFromDate:[NSDate date]];
    [self performSelector:@selector(UpdateTime) withObject:self afterDelay:1.0];
   }

-(void) ChangeTextStyle
{
    if ([self.Style integerValue]==0) {
        _MyLabel.font = [UIFont fontWithName:@"Zapfino" size:36.0];
        self.Seconds = [NSNumber numberWithInt:0];
    } else  if ([self.Style integerValue]==1) {
        _MyLabel.font = [UIFont fontWithName:@"American Typewriter" size:70.0];
        self.Seconds = [NSNumber numberWithInt:0];
    } else if ([self.Style integerValue]==2) {
        _MyLabel.font = [UIFont fontWithName:@"Avenir Next" size:70.0];
        self.Seconds = [NSNumber numberWithInt:0];
    } else if ([self.Style integerValue]==10) {
        _MyLabel.font = [UIFont fontWithName:@"Zapfino" size:36.0];
        self.Seconds = [NSNumber numberWithInt:1];
    } else if ([self.Style integerValue]==11) {
        _MyLabel.font = [UIFont fontWithName:@"American Typewriter" size:70.0];
       self.Seconds = [NSNumber numberWithInt:1];
    } else if ([self.Style integerValue]==12) {
        _MyLabel.font = [UIFont fontWithName:@"Avenir Next" size:70.0];
        self.Seconds = [NSNumber numberWithInt:1];

    }




    
}

@end
