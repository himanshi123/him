//
//  RBUserCell.h
//  Rainbow
//
//  Created by Sudhanshu on 13/06/13.
//  Copyright (c) 2013 Sudhanshu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RBUserCell : UITableViewCell{
  
  UIImageView *userImageView_;
  UIImageView *userCoverImageView_;
  UILabel *nameLabel_;
  UIButton *moodLabel_;
  UILabel *timeLabel_;
  
}


-(void)setUserInfo:(NSString *)userInfo;

@end
