//
// Created by Alexandre ARRAMON on 11/03/2016.
// Copyright (c) 2016 Voodoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MySoundManager.h"
#import "ObjectAL.h"

@interface OALAdapter : NSObject

-(void)preload:(NSString *)path;
-(void)play:(NSString *)name;
-(void)pause;
-(void)resume;
-(void)stop:(NSString *)name;
-(void)stopAll;
-(void)setLoop:(bool)loop;
-(void)setVolume:(double)volume;

@end