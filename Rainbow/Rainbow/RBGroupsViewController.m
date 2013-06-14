//
//  RBGroupsViewController.m
//  Rainbow
//
//  Created by Sudhanshu on 13/06/13.
//  Copyright (c) 2013 Sudhanshu. All rights reserved.
//

#import "RBGroupsViewController.h"
#import "TRSideMenu.h"

@interface RBGroupsViewController ()

@end

@implementation RBGroupsViewController

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
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.leftBarButtonItem = [self leftMenuBarButtonItem];
    [self setupTitle];
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
  titleView.text = @"Groups";
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



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
