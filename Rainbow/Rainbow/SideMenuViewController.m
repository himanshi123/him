//
//  SideMenuViewController.m
//  MFSideMenuDemo
//
//  Created by Michael Frederick on 3/19/12.

#import "SideMenuViewController.h"
#import "TRSideMenu.h"

#import "RBProfileViewController.h"
#import "RBGroupsViewController.h"
#import "RBFriendsViewController.h"
#import "RBChatsViewController.h"
#import "RBSettingsViewController.h"




@implementation SideMenuViewController {
  
  NSMutableArray *dataArray;
  NSMutableArray *imgArray;
  NSMutableArray *searchedVideosArr;
  UISearchBar *searchBar;
  
  NSString *searchTxt;
  int status;
}

@synthesize sideMenu;

- (void) viewDidLoad {
  
  
    [super viewDidLoad];
  
   status=1;
   dataArray=[[NSMutableArray alloc]init];
   searchedVideosArr=[[NSMutableArray alloc]init];
   [dataArray addObject:@"Me"];
   [dataArray addObject:@"Groups"];
   [dataArray addObject:@"Friends"];
   [dataArray addObject:@"Chats"];
   [dataArray addObject:@"Settings"];
  
  
    self.tableView.separatorColor = [UIColor blackColor];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
  
  
}

-(void)viewWillAppear:(BOOL)animated {
  
  NSLog(@"hii");
}

-(void)viewWillDisappear:(BOOL)animated {
  
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  
  
  
  return 45;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  
    
    return [dataArray count];
 

}
  
 

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

     
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
  
    [cell.imageView setImage:[UIImage imageNamed:@"notes.png"]];
  
    [cell.textLabel setText:[dataArray objectAtIndex:indexPath.row]];
  
  return cell;
      
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
  
  switch (indexPath.row) {
    
      case 0: {
        
        RBProfileViewController *profileViewController = [[RBProfileViewController alloc] initWithNibName:@"RBProfileViewController" bundle:nil];
       
        
        NSArray *controllers = [NSArray arrayWithObject:profileViewController];
        self.sideMenu.navigationController.viewControllers = controllers;
        [self.sideMenu setMenuState:MFSideMenuStateClosed];
      }
      break;
      
      
      case 1: {
        
        RBGroupsViewController *groupsViewController = [[RBGroupsViewController alloc] initWithNibName:@"RBGroupsViewController" bundle:nil];
        
        
        NSArray *controllers = [NSArray arrayWithObject:groupsViewController];
        self.sideMenu.navigationController.viewControllers = controllers;
        [self.sideMenu setMenuState:MFSideMenuStateClosed];
      }
      break;
      
      
      case 2: {
        
        RBFriendsViewController *friendsViewController = [[RBFriendsViewController alloc] initWithNibName:@"RBFriendsViewController" bundle:nil];
        
        
        NSArray *controllers = [NSArray arrayWithObject:friendsViewController];
        self.sideMenu.navigationController.viewControllers = controllers;
        [self.sideMenu setMenuState:MFSideMenuStateClosed];
      }
      break;
      
      case 3: {
        
        RBChatsViewController *chatsViewController = [[RBChatsViewController alloc] initWithNibName:@"RBChatsViewController" bundle:nil];
        
        
        NSArray *controllers = [NSArray arrayWithObject:chatsViewController];
        self.sideMenu.navigationController.viewControllers = controllers;
        [self.sideMenu setMenuState:MFSideMenuStateClosed];
      }
      break;
      
      
      case 4: {
        
        RBSettingsViewController *settingsViewController = [[RBSettingsViewController alloc] initWithNibName:@"RBSettingsViewController" bundle:nil];
        
        
        NSArray *controllers = [NSArray arrayWithObject:settingsViewController];
        self.sideMenu.navigationController.viewControllers = controllers;
        [self.sideMenu setMenuState:MFSideMenuStateClosed];
      }
      break;
      
      
      
      
      
  }
  
}


@end
