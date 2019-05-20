//
//  DHKPlaylist.h
//  PlayistInObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DHKSong;

NS_ASSUME_NONNULL_BEGIN

@interface DHKPlaylist : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic, strong, readonly) NSArray* songs;

- (instancetype) initWithName:(NSString*) name songs:(NSArray*)songs;

- (void) addSongsObject:(DHKSong *)object;
- (void) removeSongsObject:(DHKSong *)object;

@end

NS_ASSUME_NONNULL_END
