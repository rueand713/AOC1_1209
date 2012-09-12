//
//  ViewController.m
//  project3
//
//  Created by Rueben Anderson on 9/10/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // define initial variables
    int int_a = 6;
    int int_b = 6;
    NSInteger nsi_a = int_a;
    NSInteger nsi_b = int_b;
    NSString *strText = [[NSString alloc] initWithString:@""];
    
    // check if strText object exists
    if (strText != nil)
    {
        // call the append function and captures the result in the strText variable (#4)
        strText = [self append:@"This is an alert. " str2:@"Just press the 'Accept' button."];
        
        // pass in the appended values to be displayed in a UIAlertView
        [self dislplayAlertWithString:strText];
        
    }
    
    // call the add function and capture the result in the answer variable (#6)
    // creates an NSNumber object ns_num that holds the value returned in answer (#7)
    // creates an NSString object that will hold the converted ns_num value (#8)
    int answer = [self add:(int) int_a val2: (int) int_b ];
    NSNumber *ns_num = [[NSNumber alloc] initWithInt:answer];
    NSString *numStr = [[NSString alloc] initWithFormat:@"The number is %@", ns_num ];
    
    // passes in the numStr object to be displayed as UIAlertView
    [self dislplayAlertWithString:numStr];
    
    // call the compare function and capture the result in the comp variable (#9a)
    BOOL comp = [self compare:nsi_a nsVal2:nsi_b];
    
    // if comp evaluates true display an UIAlertView of the values and YES (#9b)
    if (comp) {
        NSString *compText = [[NSString alloc] initWithFormat:@"%@ %d is equal to %d", comp ? @"YES" : @"NO", nsi_a, nsi_b ];
        [self dislplayAlertWithString: compText];
    }
    
        
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

    // Defines the add function
- (int)add:(int)val1 val2:(int)val2
{
    return val1 + val2;
}

    // Defines the compare function
- (BOOL)compare:(NSInteger)nsVal1 nsVal2:(NSInteger)nsVal2
{
    BOOL equal = NO;
    
    if (nsVal1 == nsVal2){
        equal = YES;
    };
    
    return equal;
}

    // Defines the append function
- (NSString*)append:(NSString *)str1 str2:(NSString *)str2
{
    NSMutableString *newString = [[NSMutableString alloc] initWithString:str1];
    [newString appendString:str2];
    
    return newString;
}

    // Defines the displayAlertWithString function
- (void)dislplayAlertWithString:(NSString*)alertStr
{
    UIAlertView *alertbox = [[UIAlertView alloc] initWithTitle:@"ALERT" message:alertStr delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alertbox show];
}

@end
