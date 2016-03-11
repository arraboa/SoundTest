//
//  GameScene.m
//  Sound Test
//
//  Created by Alexandre ARRAMON on 04/03/2016.
//  Copyright (c) 2016 Voodoo. All rights reserved.
//


#import "GameScene.h"
#import "SoundManagerAdapter.h"
#import "SoundManager.h"
#import "OALAdapter.h"
#import "OALAdapter.m"

@interface GameScene()

@property(nonatomic, strong) OALAdapter *OALadapter;
@property(nonatomic, strong) SoundManagerAdapter *adapter;
@property bool idMusic;

@end

const bool USE_SM = false;
const bool USE_OAL = true;

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 45;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];

    if (USE_SM) {
        NSLog(@"SoundManager Preload");
        self.adapter = [[SoundManagerAdapter alloc] init];
        [self.adapter preload:@""];
    }
    if (USE_OAL){
        self.OALadapter = [[OALAdapter alloc] init];
    }
}

-(void)stopSounds{
    [self.OALadapter stopAll];
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */

    for (UITouch *touch in touches) {
        if (USE_SM){
            NSLog(@"SoundManager Play sound.mp3");
            _idMusic ? [self.adapter play:WOOD_SOUND] :
                    [self.adapter play:WHALE_SOUND];

        }
        if (USE_OAL){
            _idMusic ? [self.OALadapter play:WOOD_SOUND] :
                    [self.OALadapter play:WHALE_SOUND];
        }
        _idMusic = !_idMusic;
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
