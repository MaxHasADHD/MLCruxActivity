//
//  ViewController.m
//  MLCruxActivityDemo
//
//  Created by Maximilian Litteral on 3/6/13.
//  Copyright (c) 2013 Maximilian Litteral. All rights reserved.
//

#import "ViewController.h"

#import "MLCruxActivity.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Actions

- (IBAction)showActionSheet {
    
    MLCruxActivity *cruxActivity = [[MLCruxActivity alloc] init];
    
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[url] applicationActivities:@[cruxActivity]];
    [self presentViewController:activityViewController animated:YES completion:nil];
}
#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
