//
// Created by Alexandre ARRAMON on 10/03/2016.
// Copyright (c) 2016 Voodoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MySoundManager.h"

@interface SoundManagerAdapter : NSObject <MySoundManager>

-(void)preload:(NSString *)path ;
-(void)play:(NSString *)name ;
-(void)stop:(NSString *)name;
-(void)stopAll;
-(void)setLoop:(bool)loop;
-(void)setVolume:(double)volume;

@end

