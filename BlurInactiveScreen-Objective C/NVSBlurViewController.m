//
//  ViewController.m
//  BlurInactiveScreen-Objective C
//
//  Created by Nikolay Shubenkov on 21/05/15.
//  Copyright (c) 2015 Nikolay Shubenkov. All rights reserved.
//

#import "NVSBlurViewController.h"

#import "AppDelegate+NVSBlurAppScreen.h"

@interface NVSBlurViewController ()

@end

@implementation NVSBlurViewController


- (IBAction)blurButtonPressed:(UIButton *)sender
{
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    [delegate nvs_blurPresentedView];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [delegate nvs_unblurPresentedView];
    });
}

@end
