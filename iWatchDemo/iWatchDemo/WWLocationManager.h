//
//  WWLocationManager.h
//  LBSDemo
//
//  Created by silicon on 17/4/19.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>

@interface WWLocationManager : CLLocationManager<CLLocationManagerDelegate>

+ (instancetype)sharedManager;

- (void)start;

- (void)stop;
@end
