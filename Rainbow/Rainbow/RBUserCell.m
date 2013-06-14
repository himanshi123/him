//
//  RBUserCell.m
//  Rainbow
//
//  Created by Sudhanshu on 13/06/13.
//  Copyright (c) 2013 Sudhanshu. All rights reserved.
//

#import "RBUserCell.h"

@implementation RBUserCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
      
      userImageView_ = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 60)];
      [userImageView_ setBackgroundColor:[UIColor lightGrayColor]]; 
      [self.contentView addSubview:userImageView_];
      
      userCoverImageView_ = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 60)];
      [userCoverImageView_ setBackgroundColor:[UIColor clearColor]];
      [self.contentView addSubview:userCoverImageView_];
      
      
      nameLabel_ = [[UILabel alloc] initWithFrame:CGRectMake(55, 5, 200, 20)];
      [nameLabel_ setFont:[UIFont boldSystemFontOfSize:15.0]];
      [self.contentView addSubview:nameLabel_];
      
      
      moodLabel_ = [[UIButton alloc] initWithFrame:CGRectMake(55, 26, 100, 20)];
      [moodLabel_ setBackgroundImage:[UIImage imageNamed:@"commenttextbg.png"] forState:UIControlStateNormal];
      [[moodLabel_ titleLabel] setFont:[UIFont fontWithName:@"Verdana" size:11.0]];
      [moodLabel_ setContentHorizontalAlignment:  UIControlContentHorizontalAlignmentLeft];
      moodLabel_.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
      
      
      [self.contentView addSubview:moodLabel_];
      
      
      timeLabel_ = [[UILabel alloc] initWithFrame:CGRectMake(55, 42, 100, 15)];
      [timeLabel_ setFont:[UIFont fontWithName:@"Verdana" size:9.0]];
      [timeLabel_ setTextColor:[UIColor grayColor]];
      [self.contentView addSubview:timeLabel_];
 
      
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)setUserInfo:(NSString *)userInfo{
  
  [nameLabel_ setText:userInfo];
  [moodLabel_ setTitle:@"Boaring..." forState:UIControlStateNormal];
  
  [timeLabel_ setText:@"09:35"];
  [userImageView_ setImage:[UIImage imageNamed:@"profile.png"]];
  [userCoverImageView_ setImage:[UIImage imageNamed:@"circle_cover.png"]];
  
}


@end
