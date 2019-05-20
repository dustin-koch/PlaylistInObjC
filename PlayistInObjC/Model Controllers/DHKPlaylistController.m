//
//  DHKPlaylistController.m
//  PlayistInObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import "DHKPlaylistController.h"

@interface DHKPlaylistController()

@property (nonatomic, strong, readwrite) NSMutableArray* internalPlaylists;

@end

@implementation DHKPlaylistController

+ (DHKPlaylistController*) sharedController
{
    static DHKPlaylistController *sharedController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedController = [DHKPlaylistController new];
    });
    return sharedController;
}

- (instancetype) init
{
    self = [super init];
    if (self) {
        _internalPlaylists = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)playlist
{
    return self.internalPlaylists;
}

//MARK: - CRUD functions

- (void)createPlaylistWIthName:(NSString *)name
{
    DHKPlaylist *newPlaylist = [[DHKPlaylist alloc] initWithName:name songs:[NSMutableArray new]];
    [self.internalPlaylists addObject:newPlaylist];
}

- (void)deletePlaylistWithName:(DHKPlaylist *)playlist
{
    [self.internalPlaylists removeObject:playlist];
}

- (void)addSongWithTitle:(NSString *)title andArtist:(NSString *)artist toPlaylist:(DHKPlaylist *)playlist
{
    DHKSong *newSong = [[DHKSong alloc] initWithTitle:title artist:artist];
    [playlist addSongsObject:newSong];
}

- (void)removeSong:(DHKSong *)song fromPlaylist:(DHKPlaylist *)playlist
{
    [playlist removeSongsObject:song];
}


@end
