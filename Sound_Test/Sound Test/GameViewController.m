//
//  GameViewController.m
//  Sound Test
//
//  Created by Alexandre ARRAMON on 04/03/2016.
//  Copyright (c) 2016 Voodoo. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"

@interface GameViewController()
@property(nonatomic, strong) GameScene *scene;
@end


@implementation GameViewController

@synthesize AVFplayer;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;
    
    // Create and configure the scene.
    self.scene = [GameScene nodeWithFileNamed:@"GameScene"];
    self.scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:self.scene];
}

- (BOOL)shouldAutorotate
{
    return NO;
}
- (IBAction)stopButtonAction:(UIButton *)sender {
    [self.scene stopSounds];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

@end
