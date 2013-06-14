//
//  RBAppDelegate.h
//  Rainbow
//
//  Created by Sudhanshu on 13/06/13.
//  Copyright (c) 2013 Sudhanshu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRSideMenu.h"


@class RBChatsViewController;



@interface RBAppDelegate : UIResponder <UIApplicationDelegate>{
  
  UINavigationController *navigationController_;
 
  
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigationController;

@property (strong, nonatomic) RBChatsViewController *viewController;

@end
