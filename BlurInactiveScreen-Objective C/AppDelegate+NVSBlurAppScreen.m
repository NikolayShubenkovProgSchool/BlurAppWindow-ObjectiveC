//
//  AppDelegate+NVSBlurAppScreen.m
//  BlurInactiveScreen-Objective C
//
//  Created by Nikolay Shubenkov on 21/05/15.
//  Copyright (c) 2015 Nikolay Shubenkov. All rights reserved.
//

#import "AppDelegate+NVSBlurAppScreen.h"

static const int kNVSBlurViewTag = 198490;

@implementation AppDelegate (NVSBlurAppScreen)

#pragma mark - Public

- (void)nvs_blurPresentedView
{
    if ([self.window viewWithTag:kNVSBlurViewTag]){
        return;
    }
    [self.window addSubview:[self p_blurView]];
}

- (void)nvs_unblurPresentedView
{
    [[self.window viewWithTag:kNVSBlurViewTag] removeFromSuperview];
}

#pragma mark - Private

- (UIView *)p_blurView
{
    UIView *snapshot = [self.window snapshotViewAfterScreenUpdates:NO];
    
    UIView *blurView = nil;
    if ([UIVisualEffectView class]){
        UIVisualEffectView *aView = [[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
        blurView        = aView;
        blurView.frame  = snapshot.bounds;
        [snapshot addSubview:aView];
    }
    else {
        UIToolbar *toolBar  = [[UIToolbar alloc] initWithFrame:snapshot.bounds];
        toolBar.barStyle    = UIBarStyleBlackTranslucent;
        [snapshot addSubview:toolBar];
    }
    snapshot.tag = kNVSBlurViewTag;
    return snapshot;
}

@end
