//
// Created by PixMix on 10/03/2016.
// Copyright (c) 2016 Voodoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MySoundManager.h"
#import <AVFoundation/AVFoundation.h>

@interface AVFoundationManager : NSObject <AVAudioPlayerDelegate>

@property (nonatomic, retain) AVAudioPlayer *AVFPlayer;

-(void)preload:(NSString *)path;
-(void)play:(NSString *)name;
-(void)stop:(NSString *)name;
-(void)stopAll;
-(void)setLoop:(bool)loop;
-(void)setVolume:(double)volume;

@end