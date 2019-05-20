//
//  DHKPlaylist.m
//  PlayistInObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import "DHKPlaylist.h"

@interface DHKPlaylist()
@property (nonatomic, strong) NSMutableArray* internalSongs;

@end

@implementation DHKPlaylist

- (instancetype) initWithName:(NSString *)name songs:(NSArray *)songs
{
    self = [super init];
    if (self) {
        _name = name;
        _internalSongs = [songs mutableCopy];
    }
    return self;
}

@end
