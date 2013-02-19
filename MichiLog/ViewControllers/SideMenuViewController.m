//
//  SideMenuViewController.m
//  MichiLog
//
//  Created by Takuo IMBE on 2/17/13.
//  Copyright (c) 2013 Takuo IMBE. All rights reserved.
//

#import "SideMenuViewController.h"
#import "PKRevealController.h"
#import "MainViewController.h"
#import "HistoryViewController.h"
#import "SettingViewController.h"

enum SideBarMenuTags {
    kMainMenuTag = 0,
    kHistoryMenuTag = 1,
    kSettingMenuTag = 2,
};

@interface SideMenuViewController ()

#pragma mark - Properties
@property (nonatomic, strong, readwrite) UITableView *tableView;
@property (nonatomic, strong, readwrite) NSArray *menuList;
@end

@implementation SideMenuViewController

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
    
    self.tableView = [[UITableView alloc]
                      initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.autoresizingMask = ( UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth );
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    [self.view addSubview:self.tableView];
    
    // initialize menuList
    self.menuList = [NSArray arrayWithObjects:@"Main", @"History", @"Setting", nil];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.menuList count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellReuseIdentifier = @"cellReuseIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellReuseIdentifier];
    }
    
    cell.textLabel.text = [self.menuList objectAtIndex:indexPath.row];
    //[NSString stringWithFormat:@"Menu %d", indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case kMainMenuTag:
        {
            UINavigationController *mainViewNav = [[UINavigationController alloc]
                                                      initWithRootViewController:
                                                      [[MainViewController alloc] init]];
            [self.revealController setFrontViewController:mainViewNav focusAfterChange:YES completion:nil];
        }
            break;
        case kHistoryMenuTag:
        {
            UINavigationController *historyViewNav = [[UINavigationController alloc]
                                                      initWithRootViewController:
                                                      [[HistoryViewController alloc] init]];
            [self.revealController setFrontViewController:historyViewNav focusAfterChange:YES completion:nil];
        }
            break;
        case kSettingMenuTag:
        {
            UINavigationController *settingViewNav = [[UINavigationController alloc]
                                                      initWithRootViewController:
                                                      [[SettingViewController alloc] init]];
            [self.revealController setFrontViewController:settingViewNav focusAfterChange:YES completion:nil];
        }
            break;
        default:
            break;
    }
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
