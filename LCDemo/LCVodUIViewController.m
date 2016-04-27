//
//  LCVodViewController.m
//  XVOD
//
//  Created by dev on 16/4/27.
//  Copyright © 2016年 Chensh. All rights reserved.
//

#import "LCVodUIViewController.h"
#import "LCPlayerViewControl.h"
#import "MacroDefines.h"


@interface LCVodUIViewController () <LCPlayerControlDelegate>

@property (nonatomic, strong) LCPlayerViewControl *control;
@property (nonatomic, strong) UIView *playerView;

@end

@implementation LCVodUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _control = [[LCPlayerViewControl alloc] init];
    _control.hiddenStatusBarWhenFullScreen = YES;
//    _control.hiddenBackButton = YES;
    _control.enableGravitySensor = YES;
    _control.enableDownload = YES;
    _control.delegate = self;
    
    _playerView = [_control createPlayerWithOwner:self frame:CGRectMake(0, 64.0f, [UIScreen mainScreen].bounds.size.width, 250.0f)];
    
    [_control registerVodPlayerWithUU:KVOD_UU vu:KVOD_VU];
    
    [self.view addSubview:_playerView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden
{
    return [_control statusBarHiddenState];
}

- (BOOL)shouldAutorotate
{
    return NO;
}


- (void)lcPlayerControl:(LCPlayerControl *)playerControl didChangePlayerFullScreenState:(BOOL)fullScreen {
    
}

- (void)lcPlayerControlDidClickBackBtn:(LCPlayerControl *)playerControl {
    [_control stop];
    [_control destroyPlayer];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)lcPlayerControl:(LCPlayerControl *)playerControl
             mediaTitle:(NSString *)mediaTitle
        currentPlayTime:(NSTimeInterval)currentPlayTimestamp
              totalTime:(NSTimeInterval)totalTime {
    
}

- (void)lcPlayerControl:(LCPlayerControl *)playerControl
            playerEvent:(LCPlayerControlEvent)event
                  error:(NSError *)error {
    
}



@end
