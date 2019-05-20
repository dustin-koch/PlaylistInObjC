//
//  DHKDetailTableViewController.h
//  PlayistInObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DHKPlaylist;

NS_ASSUME_NONNULL_BEGIN

@interface DHKDetailTableViewController : UITableViewController

@property (nonatomic, strong) DHKPlaylist *playlist;


@end

NS_ASSUME_NONNULL_END
