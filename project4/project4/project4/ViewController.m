//
//  ViewController.m
//  project4
//
//  Created by Rueben Anderson on 9/18/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // set a dark background for the main view
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    // create a the username label
    UILabel *username = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 10.0f, 90.0f, 30.0f)];
    
    // verify the username object has been created properly
    if (username != nil)
    {
        // set the username label background to be transparent
        username.backgroundColor = [UIColor clearColor];
        
        // set the username label to the text "username" with white font color
        username.text = @"Username:";
        username.textColor = [UIColor whiteColor];
        
        // show the username label within the current view
        [self.view addSubview:username];
    }
    
    // create the login button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (button != nil)
    {
        // set the button frame, tag, and tint color
        button.frame = CGRectMake(205.0f, 45.0f, 90.0f, 30.0f);
        button.tintColor = [UIColor grayColor];
        button.tag = TAG_ONE;
        
        // set the button text to "Login" for default state
        [button setTitle:@"Login" forState:UIControlStateNormal];
        
        // capture the event and call the onClick function with a pointer to the button
        [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        // show the button on the main view
        [self.view addSubview:button];
    }

    
    // creates a UITextField for capturing user input
    userIdInput = [[UITextField alloc] initWithFrame:CGRectMake(115.0f, 10.0f, 180.0f, 30.0f)];
    
    // verify that the userIdInput was created properly
    if (userIdInput != nil)
    {
        // set the userIdInput textField to black font color 
        userIdInput.textColor = [UIColor blackColor];
        
        // set the userIdInput textField borderstyle and background color
        userIdInput.borderStyle = UITextBorderStyleRoundedRect;
        userIdInput.backgroundColor = [UIColor whiteColor];
        
        // show the userIdInput textField within the current view
        [self.view addSubview:userIdInput];
    }
    
    // create UILabel object
    userMsgLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 70.0f)];
    
    // verify the userMsgLabel object has been created properly
    if (userMsgLabel != nil)
    {
        // set the background color of the label
        userMsgLabel.backgroundColor = [UIColor whiteColor];
        
        // sets the label text and color and centers it
        userMsgLabel.text = @"Please Enter Username";
        userMsgLabel.textColor = [UIColor blackColor];
        userMsgLabel.textAlignment = UITextAlignmentCenter;
        
        // show the userMsgLabel within the current view
        [self.view addSubview:userMsgLabel];
    }
    
    // create the showdate button
    UIButton *showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    // verify that the showDate label has been created properly
    if (showDate != nil)
    {
        showDate.frame = CGRectMake(20.0f, 250.0f, 120.0f, 40.0f);
        showDate.tintColor = [UIColor grayColor];
        showDate.tag = TAG_TWO;
        
        // set the button default text to "show date"
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        
        // capture the event and call the onClick function with a pointer to the button
        [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        // show the showDate button within the current view
        [self.view addSubview:showDate];
    }
    
    // create an information button object
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    
    // verify that the infoButton has been created properly
    if (infoButton != nil)
    {
        // create the button frame and give it a tag property and value
        infoButton.frame = CGRectMake(20.0f, 390.0f, 20.0f, 20.0f);
        infoButton.tag = TAG_THREE;
        
        // capture the event and call the onClick function with a pointer to the button
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        // show the infoButton button within the current view
        [self.view addSubview:infoButton];
    }
    
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 415.0f, 220.0f, 40.0f)];
    
    if (infoLabel != nil)
    {
        // set the background to be transparent and font color to be orange
        infoLabel.backgroundColor = [UIColor clearColor];
        infoLabel.textColor = [UIColor orangeColor];
        
        // show the infoLabel label within the view
        [self.view addSubview:infoLabel];
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

- (void)onClick:(UIButton*)button
{
    
    // reference the pointer to button tag property
    switch (button.tag) {
        case TAG_ONE:
        {
            // create a NSString to hold the user text
            NSString *text = [userIdInput text];
            
            // verify that the text object has a length greater than zero
            // to show the success alertview otherwise show the fail alertview
            if ([text length] > 0 )
            {
                // create an NSString object to hold the success string formatted with the usertext
                NSString *loginText = [[NSString alloc] initWithFormat:@"User: %@ has been logged in.", text];
                
                // sets the success label text and color and centers it
                userMsgLabel.text = loginText;
                userMsgLabel.textColor = [UIColor greenColor];

            }
            else
            {
                // sets the error label text and color and centers it
                userMsgLabel.text = @"Username cannot be empty";
                userMsgLabel.textColor = [UIColor redColor];

            }
 
        }
            break;
            
        case TAG_TWO:
        {
            NSDate *date = [NSDate date];
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
            
            // verify that the dateFormat object has been created properly
            if (dateFormat != nil)
            {
                // sets the date formatting
                [dateFormat setDateFormat:@"MMMM dd, yyyy h:mm:ss aaa zzzz"];
                
                // create a new NSString object with the formatted date string
                NSString *dateString = [[NSString alloc] initWithFormat:@"%@", [dateFormat stringFromDate:date]];
                
                // create the dateAlert alertView object
                UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:dateString delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
                
                // verify the dateAlert object has been created properly
                if (dateAlert != nil)
                {
                    // show the alertView
                    [dateAlert show];
                }
            }
        }
            break;
            
        case TAG_THREE:
        {
            // set the infoLabel text
            infoLabel.text = @"This application was created by: Rueben Anderson";
            
            // set the number of lines to 2
            infoLabel.numberOfLines = 2;

        }
            break;
            
        default:
        {
            // create an error alertView object
            UIAlertView *errAlert = [[UIAlertView alloc] initWithTitle:@"Exception" message:@"Unexpected error" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
            
            // verify that the errAlert has been created properly
            if (errAlert != nil)
            {
                // show the error alert
                [errAlert show];
            }
        }
            break;
    }
}

@end
