//
//  SettingViewController.m
//  MichiLog
//
//  Created by Takuo IMBE on 2/17/13.
//  Copyright (c) 2013 Takuo IMBE. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
    UILabel *settingLbl = [[UILabel alloc] initWithFrame:CGRectMake(100, 120, 120, 50)];
    settingLbl.text = @"Setting";
    settingLbl.backgroundColor = [UIColor clearColor];
    settingLbl.font = [UIFont fontWithName:@"Helvetica-Bold" size:32];
    settingLbl.textColor = [UIColor whiteColor];
    [self.view addSubview:settingLbl];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
