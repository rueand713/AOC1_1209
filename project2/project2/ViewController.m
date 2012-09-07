//
//  ViewController.m
//  project2
//
//  Created by Rueben Anderson on 9/6/12.
//  Copyright (c) 2012 Rueben Anderson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // create label objects
    
    // sets the main view's background color
    self.view.backgroundColor = [UIColor blueColor];
    
    // Title label will be 10 units top margin
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 30.0f)];
    
    // Author Field label will be 20 units below the Title label with 10 units between Author Label
    UILabel *authorFieldLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 60.0f, 100.0f, 30.0f)];
    UILabel *authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 60.0f, 190.0f, 30.0f)];
    
    // Published label will be 5 units below the Author label with 10 units between Published Text Label
    UILabel *publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 95.0f, 100.0f, 30.0f)];
    UILabel *publishedTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 95.0f, 190.0f, 30.0f)];
    
    // Summary label will be 25 units below the Published Text label
    // Summary Text label will be 5 units (y) below Summary label
    UILabel *summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 150.0f, 100.0f, 30.0f)];
    UILabel *summaryTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 185.0f, 300.0f, 170.0f)];
    
    // Item label will be 10 units below the summary Text label
    // Item List label will be 5 units below Item label
    UILabel *itemLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 365.0f, 100.0f, 30.0f)];
    UILabel *itemListLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 400.0f, 300.0f, 50.0f)];

    
    // set up the array of items and mutable strings for concatenation
    NSArray *items = [[NSArray alloc] initWithObjects:@"Leptons", @"Quarks", @"Hadrons", @"Bosons", @"Space-time", nil];
    NSMutableString *strItems = [[NSMutableString alloc] initWithString:@""];
    NSMutableString *tempStr = [NSMutableString alloc];
    
    // iterate for the count of the array
    for (int i=0; i<[items count]; i++) {
    
        // sets the value of the array into the tempStr variable
        tempStr = [items objectAtIndex:i];
        
        // checks if this is the first run
        // if it isn't appends a comma separater
        if (i > 0) {
            [strItems appendString:@", "];
        };
        
        // appends the string at the current index of the items array
        [strItems appendString:tempStr];
    };
    
    
    // begin error check and styling in 3...2..1
    
    // attempts to apply this styling only if the titleLabel exists
    if (titleLabel != nil) {
        titleLabel.text = @"Particle Physics";
        titleLabel.textColor = [UIColor magentaColor];
        titleLabel.textAlignment = UITextAlignmentCenter;
        titleLabel.backgroundColor = [UIColor whiteColor];
    };
    
    // attempts to apply this styling only if the authorFieldLabel exists
    if (authorFieldLabel != nil) {
        authorFieldLabel.text = @"Author:";
        authorFieldLabel.textColor = [UIColor redColor];
        authorFieldLabel.textAlignment = UITextAlignmentRight;
        authorFieldLabel.backgroundColor = [UIColor lightGrayColor];
    };
    
    // attempts to apply this styling only if the authorLabel exists
    if (authorLabel != nil) {
        authorLabel.text = @"B.R. Martin and G. Shaw";
        authorLabel.textColor = [UIColor greenColor];
        authorLabel.textAlignment = UITextAlignmentLeft;
        authorLabel.backgroundColor = [UIColor grayColor];
    };
    
    // attempts to apply this styling only if the publishedLabel exists
    if (publishedLabel != nil) {
        publishedLabel.text = @"Published:";
        publishedLabel.textColor = [UIColor cyanColor];
        publishedLabel.textAlignment = UITextAlignmentRight;
        publishedLabel.backgroundColor = [UIColor darkGrayColor];
    };
    
    // attempts to apply this styling only if the publishedTextLabel exists
    if (publishedTextLabel != nil) {
        publishedTextLabel.text = @"Wiley";
        publishedTextLabel.textColor = [UIColor whiteColor];
        publishedTextLabel.textAlignment = UITextAlignmentLeft;
        publishedTextLabel.backgroundColor = [UIColor orangeColor];
    };
    
    // attempts to apply this styling only if the itemLabel exists
    if (itemLabel != nil) {
        itemLabel.text = @"List of Items";
        itemLabel.textColor = [UIColor orangeColor];
        itemLabel.textAlignment = UITextAlignmentLeft;
        itemLabel.backgroundColor = [UIColor greenColor];
    };
    
    // attempts to apply this styling only if the itemListLabel exists
    if (itemListLabel != nil) {
        itemListLabel.text = strItems;
        itemListLabel.textColor = [UIColor blackColor];
        itemListLabel.textAlignment = UITextAlignmentCenter;
        itemListLabel.backgroundColor = [UIColor yellowColor];
        itemListLabel.numberOfLines = 2;
    };
    
    // attempts to apply this styling only if the summaryLabel exists
    if (summaryLabel != nil) {
        summaryLabel.text = @"Summary";
        summaryLabel.textColor = [UIColor yellowColor];
        summaryLabel.textAlignment = UITextAlignmentLeft;
        summaryLabel.backgroundColor = [UIColor redColor];
    };
    
    // attempts to apply this styling only if the summaryTextLabel exists
    if (summaryTextLabel != nil) {
        summaryTextLabel.text = @"Particle Physics is the study of the fundamental constituents of matter and the forces between them. For the past 25 years, these have been described by the so-called standard model of particle physics.";
        summaryTextLabel.textColor = [UIColor lightGrayColor];
        summaryTextLabel.textAlignment = UITextAlignmentCenter;
        summaryTextLabel.backgroundColor = [UIColor blackColor];
        summaryTextLabel.numberOfLines = 6;
    };

    
    // add the subviews to the parent view
    [self.view addSubview:titleLabel];
    [self.view addSubview:authorFieldLabel];
    [self.view addSubview:authorLabel];
    [self.view addSubview:publishedLabel];
    [self.view addSubview:publishedTextLabel];
    [self.view addSubview:publishedTextLabel];
    [self.view addSubview:itemLabel];
    [self.view addSubview:itemListLabel];
    [self.view addSubview:summaryTextLabel];
    [self.view addSubview:summaryLabel];
    
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

@end
