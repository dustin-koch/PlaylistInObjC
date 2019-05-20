//
//  DHKSong.h
//  PlayistInObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DHKSong : NSObject

@property(nonatomic, copy) NSString* title;
@property(nonatomic, copy) NSString* artist;

- (instancetype) initWithTitle:(NSString*)title artist:(NSString*)artist;

@end

NS_ASSUME_NONNULL_END
