//
//  ViewController.h
//  project3
//
//  Created by Rueben Anderson on 9/10/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}

// create the add (#1) and compare (#2) functions
// the add takes two int types and returns an int while the compare
// function accepts two nsinteger types and returns a BOOL type
-(int)add:(int)val1 val2:(int)val2;
-(BOOL)compare:(NSInteger)nsVal1 nsVal2:(NSInteger)nsVal2;

// create the append (#3) and displayAlertWithString (#5) functions
// the append function accepts two NSString types appends them and returns a new NSString
// the displayAlertWithString function takes 1 NSString type and displays it as a UIAlertView
-(NSString*)append:(NSString*)str1 str2:(NSString*)str2;
-(void)dislplayAlertWithString:(NSString*)alertStr;

@end
