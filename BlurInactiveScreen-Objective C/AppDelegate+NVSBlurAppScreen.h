//
//  AppDelegate+NVSBlurAppScreen.h
//  BlurInactiveScreen-Objective C
//
//  Created by Nikolay Shubenkov on 21/05/15.
//  Copyright (c) 2015 Nikolay Shubenkov. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (NVSBlurAppScreen)

- (void)nvs_blurPresentedView;
- (void)nvs_unblurPresentedView;

@end
