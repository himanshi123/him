//
//  RBViewController.m
//  Rainbow
//
//  Created by Sudhanshu on 13/06/13.
//  Copyright (c) 2013 Sudhanshu. All rights reserved.
//

#import "RBChatsViewController.h"
#import "TRSideMenu.h"
#import "RBUserCell.h"
#import <QuartzCore/QuartzCore.h>

@interface RBChatsViewController (){
  
  IBOutlet UITableView *tblView_;
  NSMutableArray *chatUserArray_;
  IBOutlet UIButton *button1_;
  IBOutlet UIButton *button2_;
  IBOutlet UIButton *button3_;
  IBOutlet UIButton *button4_;
}

@end

@implementation RBChatsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = [self leftMenuBarButtonItem];
    [self setupTitle];
  
    chatUserArray_ = [[NSMutableArray alloc] initWithObjects:@"Tom Roberts", @"Anna Shaz", @"Diane Wolfson", @"Din Pitters",@"John", nil];
  [[button1_ layer] setCornerRadius:20.0];
  [[button2_ layer] setCornerRadius:20.0];
  [[button3_ layer] setCornerRadius:20.0];
  [[button4_ layer] setCornerRadius:20.0];
  
}



-(void)setupTitle{
  
  UILabel *titleView = (UILabel *)self.navigationItem.titleView;
  
  if (!titleView) {
    
    titleView = [[UILabel alloc] initWithFrame:CGRectZero];
    titleView.backgroundColor = [UIColor clearColor];
    titleView.font = [UIFont systemFontOfSize:20.0];
    titleView.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    
    titleView.textColor = [UIColor blackColor]; // Change to desired color
    
    self.navigationItem.titleView = titleView;
    
  }
  titleView.text = @"Chats";
  [titleView sizeToFit];
  
  
  
}




- (UIBarButtonItem *)leftMenuBarButtonItem {
  
  
  UIButton *flyOutbtn = [[UIButton alloc] initWithFrame:CGRectMake(0,0,32,25)];
  
  [flyOutbtn setBackgroundImage:[UIImage imageNamed:@"menu-icon.png"] forState:UIControlStateNormal];
  [flyOutbtn setContentMode:UIViewContentModeScaleAspectFit];
  [flyOutbtn addTarget:self.navigationController.sideMenu action:@selector(toggleLeftSideMenu) forControlEvents:UIControlEventTouchUpInside];
  
  UIBarButtonItem *flyOutbtnButton = [[UIBarButtonItem alloc] initWithCustomView:flyOutbtn];
  
  return flyOutbtnButton;
  
  
}


#pragma mark UITableview datasource method

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

  return 60;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  
  
  return [chatUserArray_ count];
  
  
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  

  static NSString *CellIdentifier = @"Cell";
  
  RBUserCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) {
    cell = [[RBUserCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
  }
  
  
  [cell setUserInfo:[chatUserArray_ objectAtIndex:indexPath.row]];
  [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
  
  return cell;
  
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
  
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
