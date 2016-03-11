//
// Created by Alexandre ARRAMON on 11/03/2016.
// Copyright (c) 2016 Voodoo. All rights reserved.
//

#import "OALAdapter.h"

@interface OALAdapter()

// Sound Effects
@property (nonatomic, strong)ALDevice* device;
@property (nonatomic, strong)ALContext* context;
@property (nonatomic, strong)ALChannelSource* channel;
@property (nonatomic, strong)ALBuffer* shootBuffer;
@property (nonatomic, strong)ALBuffer* explosionBuffer;

// Background Music
@property (nonatomic, strong)OALAudioTrack* musicTrack;

@end

@implementation OALAdapter

- (id) init
{

    NSLog(@"Init start");
    if(nil != (self = [super init]))
    {
        self.device = [ALDevice deviceWithDeviceSpecifier:nil];
        self.context = [ALContext contextOnDevice:self.device attributes:nil];
        [OpenALManager sharedInstance].currentContext = self.context;

        // Deal with interruptions for me!
        [OALAudioSession sharedInstance].handleInterruptions = YES;

        // We don't want ipod music to keep playing since
        // we have our own bg music.
        [OALAudioSession sharedInstance].allowIpod = NO;

        // Mute all audio if the silent switch is turned on.
        [OALAudioSession sharedInstance].honorSilentSwitch = YES;

        // Take all 32 sources for this channel.
        // (we probably won't use that many but what the heck!)
        self.channel = [ALChannelSource channelWithSources:32];

        // Preload the buffers so we don't have to load and play them later.
        self.shootBuffer = [[OpenALManager sharedInstance]
                bufferFromFile:WHALE_SOUND];
        self.explosionBuffer = [[OpenALManager sharedInstance]
                bufferFromFile:WOOD_SOUND];

        // Background music track.
        self.musicTrack = [OALAudioTrack track];
    }
    NSLog(@"Init end");
    return self;
}

-(void)preload:(NSString *)path {
}

-(void)play:(NSString *)name {
    [self.channel play:name];
}

-(void)pause {
    self.channel.paused = YES;
}

-(void)resume{
    self.channel.paused = NO;
}

-(void)stop:(NSString *)name{

}

-(void)stopAll{
    [self.channel stop];
}

-(void)setLoop:(bool)loop{}
-(void)setVolume:(double)volume{}

@end