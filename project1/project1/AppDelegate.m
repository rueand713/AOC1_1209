//
//  AppDelegate.m
//  project1
//
//  Created by Rueben Anderson on 8/27/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    // project1 flow begins here
    // declare variables and their types
    // adjust the number of errors or the choice to change the NSLogs.
    // errors range: 0-5 or 5+. choice = YES or NO
    int errors = 6;
    float tax = 3.40f * (1.0f + (float)errors / 10.0f);
    bool choice = NO;
    int item = 0;
    int budget = 0;

    NSLog(@"Ronnie is reviewing his company receipts.");
    
    // Log Ronnie counting the errors
    for (int i=0; i<errors; i++) {
        NSLog(@"%d...", i+1);
    };
    
    NSLog(@"He notices %d error(s). One is a tax discrepancy.", errors);
    
    // Log the tax value as a float and again cast as an integer data type
    NSLog(@"The tax should be %.2f percent but it is currently %d percent.", tax, (int)tax);
    NSLog(@"Ronnie wonders if he should try to fix the problems..");
    
    // make a choice to fix the problem or not
    // condtional using float, int, bool data types and using both && and ||
    if ((choice == YES && errors <= 5) || (choice == YES && tax - 3.0 <= 2.1)) {
        NSLog(@"Ronnie decides the errors are so small he can fix them himself.");
    }
    else if ((choice == YES && errors > 5) || (choice == YES && tax - 3.0 > 2.1)) {
        NSLog(@"Ronnie decides to hire assistance in alleviating the problems.");
    }
    else {
        NSLog(@"Ronnie decides not to fix the problems.");
        // Reset the errors since they are not going to be fixed.
        errors = 0;
    };
    
    
    // while loop to iterate through the item variable logging the cost per error
    while (item < errors){
        int remainder = item % 2;
        int cost = 0;
        
        // conditional based on whether the errors are even or odd
        if (remainder == 0) {
            // even numbered errors in the item cost less
            cost = 40 + ((item+1) * 20);
            NSLog(@"The cost to fix error %d is $%d", item+1, cost);
        }
        else {
            // odd numbered errors in the item cost more
            cost = 60 + ((item+1) * 20);
            NSLog(@"The cost to fix error %d is $%d", item+1, cost);
        }
        
        // nested for loop of Ronnie counting out his money
        for (int n=0; n < cost; n+=20) {
            NSLog(@"Ronnie counts out the damage.. %d", (n/20)+1);
        };
        
        NSLog(@"%d $20's will cover the cost.", (cost/20));
        budget = budget + cost;
        item++;
    };
    
    // final message conditional
    if (errors > 0) {
        NSLog(@"Ronnie's total budget to fix the problems is $%.2f", (float)budget);
    }
    else {
        NSLog(@"Ronnie has no budget because he found no errors or has decided not to fix them.");
    };
    
    // end project flow
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
