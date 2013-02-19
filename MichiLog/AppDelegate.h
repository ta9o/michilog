//
//  AppDelegate.h
//  MichiLog
//
//  Created by Takuo IMBE on 2/17/13.
//  Copyright (c) 2013 Takuo IMBE. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PKRevealController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong, readwrite) PKRevealController *revealController;
@property (strong, nonatomic) UIWindow *window;

@end
