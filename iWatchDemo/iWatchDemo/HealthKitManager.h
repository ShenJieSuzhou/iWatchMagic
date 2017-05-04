//
//  HealthKitManager.h
//  iWatchDemo
//
//  Created by silicon on 17/5/3.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <HealthKit/HealthKit.h>

#define HKVersion [[[UIDevice currentDevice] systemVersion] doubleValue]

@interface HealthKitManager : NSObject

@property (nonatomic, strong) HKHealthStore *healthStore;

+(HealthKitManager *)shareInstance;

@end
