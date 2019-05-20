//
//  DHKPlaylistController.h
//  PlayistInObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DHKPlaylist.h"
#import "DHKSong.h"

NS_ASSUME_NONNULL_BEGIN

@interface DHKPlaylistController : NSObject

@property (nonatomic, strong, readonly) NSArray* playlist;

+ (DHKPlaylistController*) sharedController;

//Create
- (void) createPlaylistWIthName:(NSString*) name;

//Delete
-(void) deletePlaylistWithName:(DHKPlaylist*) playlist;

//Add song
- (void) addSongWithTitle:(NSString*) title andArtist:(NSString*) artist toPlaylist:(DHKPlaylist*) playlist;

//Remove song
-(void) removeSong:(DHKSong*) song fromPlaylist:(DHKPlaylist*) playlist;

@end

NS_ASSUME_NONNULL_END
