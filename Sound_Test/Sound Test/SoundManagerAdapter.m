//
// Created by Alexandre ARRAMON on 10/03/2016.
// Copyright (c) 2016 Voodoo. All rights reserved.
//

#import "SoundManagerAdapter.h"
#import "../SoundManager/SoundManager.h"

@implementation SoundManagerAdapter

    -(void)preload:(NSString *)path {
        [SoundManager sharedManager].allowsBackgroundMusic = YES;
        [[SoundManager sharedManager] prepareToPlayWithSound:@"BD0000.mp3"];
    }

    -(void)play:(NSString *)name {
        [[SoundManager sharedManager] playSound:name];
    }

    -(void)stop:(NSString *)name{}
    -(void)stopAll{}
    -(void)setLoop:(bool)loop{}
    -(void)setVolume:(double)volume{}

@end