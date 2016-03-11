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

    NSLog(@"Moved to view : OK");

    /* SoundManagerAdater */
    //[self.adapter preload:@""];

    /* AVFManager */
    self.AVFManager = [[AVFoundationManager alloc] init];
    [self.AVFManager preload:@"BD0000"];

    NSLog(@"AVFManager preload achieved");

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {

        /* SoundManagerAdater */
        //[self.adapter play:@"%@Sounds/BD0000.mp3"];

        /* AVFManager */
        [self.AVFManager play:@"BD0000"];

        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.xScale = 0.5;
        sprite.yScale = 0.5;
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
