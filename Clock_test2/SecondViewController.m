//
//  SecondViewController.m
//  Clock_test2
//
//  Created by Sergey Romakin on 21.08.13.
//  Copyright (c) 2013 Sergey Romakin. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"



@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _Label.text = @"Styles";
    _image2.image = [UIImage imageNamed:@"IMG_0415_2.JPG"];
    self.i = [NSNumber numberWithInt:0];
    _Switch.on = YES;
    //[_Switch setOn:YES animated:YES];
       
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) UpdateTextsmall:(NSInteger)Index
{
    switch (Index) {
        case 0:
            self.SmallLabel.font = [UIFont fontWithName:@"Zapfino" size:60.0];
            break;
        case 1:
            self.SmallLabel.font = [UIFont fontWithName:@"American Typewriter" size:78.0];
            break;
        case 2:
            self.SmallLabel.font = [UIFont fontWithName:@"Avenir Next" size:78.0];
            break;
            
        default:
           self.SmallLabel.font = [UIFont fontWithName:@"Zapfino" size:60.0];
            break;
    }
}


-(void) viewDidAppear:(BOOL)animated
{
    AppDelegate* delegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
    delegate.Theme = self.i;
}


- (IBAction)Style3:(id)sender {
    if (_Switch.on) {
         NSLog(@"Переключатель: включённое состояние");
    [self UpdateTextsmall:2];
    self.i = [NSNumber numberWithInt:2];
    } else {
        NSLog(@"Переключатель: выключенное состояние");
        [self UpdateTextsmall:2];
        self.i = [NSNumber numberWithInt:12];
    }
    
}

- (IBAction)Style2:(id)sender {
    if (_Switch.on) {
         NSLog(@"Переключатель: включённое состояние");
        [self UpdateTextsmall:1];
        self.i = [NSNumber numberWithInt:1];
    } else {
        NSLog(@"Переключатель: выключенное состояние");
        [self UpdateTextsmall:1];
        self.i = [NSNumber numberWithInt:11];
    }
}

- (IBAction)Style1:(id)sender {
    if (_Switch.on) {
         NSLog(@"Переключатель: включённое состояние");
        [self UpdateTextsmall:0];
        self.i = [NSNumber numberWithInt:0];
    } else {
        NSLog(@"Переключатель: выключенное состояние");
        [self UpdateTextsmall:0];
        self.i = [NSNumber numberWithInt:10];
    }

}
@end
