//
//  GameViewController.h
//  Sound Test
//

//  Copyright (c) 2016 Voodoo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import <AVFoundation/AVFoundation.h>

@interface GameViewController : UIViewController <AVAudioPlayerDelegate>

@property (nonatomic, retain) AVAudioPlayer *AVFplayer;

@end
