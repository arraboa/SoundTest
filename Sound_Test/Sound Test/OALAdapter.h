//
// Created by Alexandre ARRAMON on 11/03/2016.
// Copyright (c) 2016 Voodoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MySoundManager.h"
#import "ObjectAL.h"

@interface OALAdapter : NSObject <MySoundManager> {
// Sound Effects
ALDevice* device;
ALContext* context;
ALChannelSource* channel;
ALBuffer* shootBuffer;
ALBuffer* explosionBuffer;

// Background Music
OALAudioTrack* musicTrack;
}

@end