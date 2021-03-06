//
//  MySoundManager.h
//  Sound Test
//
//  Created by PixMix on 10/03/2016.
//  Copyright © 2016 Voodoo. All rights reserved.
//

#ifndef MYSOUNDMANAGER_H_
#define MYSOUNDMANAGER_H_

#include <Foundation/NSString.h>

#define WHALE_SOUND @"whale.mp3"
#define WOOD_SOUND @"wood-logs-2.mp3"

@protocol MySoundManager

-(void)preload:(NSString *)path;
-(void)play:(NSString *)name;
-(void)pause;
-(void)resume;
-(void)stop:(NSString *)name;
-(void)stopAll;
-(void)setLoop:(bool)loop;
-(void)setVolume:(double)volume;

@end

#endif /* !MYSOUNDMANAGER_H_ */
