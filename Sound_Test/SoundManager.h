//
//  SoundManager.h
//  Sound Test
//
//  Created by PixMix on 10/03/2016.
//  Copyright © 2016 Voodoo. All rights reserved.
//

#ifndef SoundManager_h
#define SoundManager_h

#include <Foundation/NSString.h>

@interface SoundManager

-(void)preload:(NSString *)path;
-(void)play:(NSString *)name;
-(void)stop:(NSString *)name;
-(void)stopAll;
-(void)setLoop:(bool)loop;
-(void)setVolume:(double)volume;

@end

#endif /* SoundManager_h */
