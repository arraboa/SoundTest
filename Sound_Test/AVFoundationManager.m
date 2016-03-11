//
// Created by PixMix on 10/03/2016.
// Copyright (c) 2016 Voodoo. All rights reserved.
//

#import "AVFoundationManager.h"

@implementation AVFoundationManager

@synthesize AVFPlayer;

-(void)preload:(NSString *)path {

    NSLog(@"Starting preload");

    NSString *audioFilePath = [[NSBundle mainBundle] pathForResource:path ofType:@"mp3"];
    NSLog(@"Audio file path OK");

    if (audioFilePath == nil) {
        NSLog(@"Error : Audio file path is nil");
    } else {  
        NSLog(@"File path is : %@", audioFilePath);
    }

    NSURL *pathAsURL = [[NSURL alloc] initFileURLWithPath:audioFilePath];
    NSLog(@"Audio ULR OK");

    if (pathAsURL == nil) {
        NSLog(@"Error : Audio file URL is nil");
    } else {
        NSLog(@"File path is : %@", pathAsURL);
    }

    NSData *soundData = [NSData dataWithContentsOfURL:pathAsURL];

    AVFPlayer = [[AVAudioPlayer alloc] initWithData:soundData error: nil];

    if (AVFPlayer == nil) {
        NSLog(@"Player non init");
    } else {
        NSLog(@"Player init : OK");
    }

    NSLog(@"Trying to preload file");
    AVFPlayer.delegate = self;
    AVFPlayer.volume = 1.0;
    [AVFPlayer prepareToPlay];
}

-(void)play:(NSString *)name {
    [AVFPlayer play];
}

-(void)stop:(NSString *)name {

}

-(void)stopAll {

}

-(void)setLoop:(bool)loop {

}

-(void)setVolume:(double)volume {

}

@end

