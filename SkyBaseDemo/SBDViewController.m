//
//  SBDViewController.m
//  SkyBaseDemo
//
//  Created by Grigor Yeghiazaryan on 4/24/14.
//  Copyright (c) 2014 Applifica. All rights reserved.
//

#import "SBDViewController.h"
#import "SkyBase.h"

@interface SBDViewController ()

@end

@implementation SBDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSDictionary *userData = [[NSDictionary alloc] initWithObjectsAndKeys:
                              @"skybase", @"username",
                              @"5ky6453", @"password",
                              nil];
    [SkyBase createUserInBackground:userData withBlock:^(NSString *result) {
        NSLog(@"%@",result);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
