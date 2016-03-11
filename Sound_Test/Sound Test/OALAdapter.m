//
// Created by Alexandre ARRAMON on 11/03/2016.
// Copyright (c) 2016 Voodoo. All rights reserved.
//

#import "OALAdapter.h"

@implementation OALAdapter

- (id) init
{
    if(nil != (self = [super init]))
    {
        device = [ALDevice deviceWithDeviceSpecifier:nil];
        context = [ALContext contextOnDevice:device attributes:nil];
        [OpenALManager sharedInstance].currentContext = context;

        // Deal with interruptions for me!
        [OALAudioSession sharedInstance].handleInterruptions = YES;

        // We don't want ipod music to keep playing since
        // we have our own bg music.
        [OALAudioSession sharedInstance].allowIpod = NO;

        // Mute all audio if the silent switch is turned on.
        [OALAudioSession sharedInstance].honorSilentSwitch = YES;

        // Take all 32 sources for this channel.
        // (we probably won't use that many but what the heck!)
        channel = [ALChannelSource channelWithSources:32];

        // Preload the buffers so we don't have to load and play them later.
        shootBuffer = [[OpenALManager sharedInstance]
                bufferFromFile:WHALE_SOUND];
        explosionBuffer = [[OpenALManager sharedInstance]
                bufferFromFile:WOOD_SOUND];

        // Background music track.
        musicTrack = [OALAudioTrack track];
    }
    return self;
}

-(void)preload:(NSString *)path {
}

-(void)play:(NSString *)name {
    [channel play:name];
}

-(void)pause {
    channel.paused = YES;
}

-(void)resume{
    channel.paused = NO;
}

-(void)stop:(NSString *)name{

}

-(void)stopAll{
    [channel stop];
}

-(void)setLoop:(bool)loop{}
-(void)setVolume:(double)volume{}

@end