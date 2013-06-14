//
//  SideMenuViewController.h
//  MFSideMenuDemo
//
//  Created by Michael Frederick on 3/19/12.

#import <UIKit/UIKit.h>
#import "TRSideMenu.h"


@interface SideMenuViewController : UITableViewController<UISearchBarDelegate>

@property (nonatomic, assign) TRSideMenu *sideMenu;

@end