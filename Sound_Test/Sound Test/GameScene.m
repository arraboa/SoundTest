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

@interface GameScene()

@property(nonatomic, strong) SoundManagerAdapter *adapter;

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

    NSLog(@"SoundManager Preload");
//    [SoundManager sharedManager].allowsBackgroundMusic = YES;
//    [[SoundManager sharedManager] prepareToPlayWithSound:@"BD0000.mp3"];
    self.adapter = [[SoundManagerAdapter alloc] init];
    [self.adapter preload:@""];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */

    for (UITouch *touch in touches) {
        NSLog(@"SoundManager Play BD0000.mp3");
//        [[SoundManager sharedManager] playSound:@"BD0000.mp3"];
//        [[SoundManager sharedManager] playSound:@"wood-logs-2.mp3"];
        [self.adapter play:@"wood-logs-2.mp3"];
//        CGPoint location = [touch locationInNode:self];
//
//        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
//
//        sprite.xScale = 0.5;
//        sprite.yScale = 0.5;
//        sprite.position = location;
//
//        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
//
//        [sprite runAction:[SKAction repeatActionForever:action]];
//
//        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
