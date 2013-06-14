//
//  RBAppDelegate.m
//  Rainbow
//
//  Created by Sudhanshu on 13/06/13.
//  Copyright (c) 2013 Sudhanshu. All rights reserved.
//

#import "RBAppDelegate.h"
#import "SideMenuViewController.h"
#import "RBChatsViewController.h"

@implementation RBAppDelegate

@synthesize navigationController = navigationController_;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
  
  [self setupNavigationControllerApp];
//  self.viewController = [[RBViewController alloc] initWithNibName:@"RBViewController" bundle:nil];
//  self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void) setupNavigationControllerApp {

  self.window.rootViewController = [self sideMenu].navigationController;
  [self.window makeKeyAndVisible];
}


- (RBChatsViewController *)firstController  {
  return [[RBChatsViewController alloc] initWithNibName:@"RBChatsViewController" bundle:nil];
}

- (UINavigationController *)navigationController {
  
  UINavigationController *navController = [[UINavigationController alloc]
                                           initWithRootViewController:[self firstController]];
  
  [[navController navigationBar] setTintColor:[UIColor whiteColor]];
  
  return navController;
}


- (TRSideMenu *)sideMenu {
  SideMenuViewController *leftSideMenuController = [[SideMenuViewController alloc] init];
  SideMenuViewController *rightSideMenuController = [[SideMenuViewController alloc] init];
  UINavigationController *navigationController = [self navigationController];
  
  TRSideMenu *sideMenu = [TRSideMenu menuWithNavigationController:navigationController
                                           leftSideMenuController:leftSideMenuController
                                          rightSideMenuController:rightSideMenuController];
  
  leftSideMenuController.sideMenu = sideMenu;
  rightSideMenuController.sideMenu = sideMenu;
  
  return sideMenu;
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
