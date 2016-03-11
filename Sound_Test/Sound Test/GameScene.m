//
//  GameScene.m
//  Sound Test
//
//  Created by Alexandre ARRAMON on 04/03/2016.
//  Copyright (c) 2016 Voodoo. All rights reserved.
//


#import "GameScene.h"
#import "SoundManagerAdapter.h"
#import "AVFoundationManager.h"

@interface GameScene()

@property(nonatomic, assign) SoundManagerAdapter *adapter;
@property(nonatomic, assign) AVFoundationManager *AVFManager;

@end

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 45;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];

    /* SoundManagerAdater */

//    NSLog(@"SoundManager Preload");
//    [SoundManager sharedManager].allowsBackgroundMusic = YES;
//    [[SoundManager sharedManager] prepareToPlayWithSound:@"BD0000.mp3"];
//    self.adapter = [[SoundManagerAdapter alloc] init];
//    [self.adapter preload:@""];

    /* AVFManager */

    self.AVFManager = [[AVFoundationManager alloc] init];
    [self.AVFManager preload:@"BD0000"];
    NSLog(@"AVFManager preload achieved");
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */

    for (UITouch *touch in touches) {

        /* SoundManagerAdater */

//        NSLog(@"SoundManager Play BD0000.mp3");
//        [[SoundManager sharedManager] playSound:@"BD0000.mp3"];
//        [[SoundManager sharedManager] playSound:@"wood-logs-2.mp3"];
//        [self.adapter play:@"wood-logs-2.mp3"];

        /* AVFManager */

        [self.AVFManager play:@"BD0000"];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
