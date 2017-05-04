//
//  WWLocationManager.m
//  LBSDemo
//
//  Created by silicon on 17/4/19.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import "WWLocationManager.h"

@implementation WWLocationManager

+ (WWLocationManager *)sharedManager{
    static WWLocationManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[WWLocationManager alloc] init];
    });
    
    return manager;
}

- (instancetype)init
{
    self = [super init];
    self.delegate = self;
    self.desiredAccuracy = kCLLocationAccuracyBest;
//    self.distanceFilter = 1;
    self.pausesLocationUpdatesAutomatically = NO;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)
    {
        [self requestWhenInUseAuthorization];
        [self requestAlwaysAuthorization];
    }
    
    if([[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0){
        self.allowsBackgroundLocationUpdates = YES;
    }
    
    return self;
}

- (void)start{
    if ([CLLocationManager locationServicesEnabled]) {
        NSLog(@"开始执行定位服务");
        
        
        //开始监听定位信息
        [self startUpdatingLocation];
    }else{
        NSLog(@"定位无法开启");
    }
}

-(void)stop{
    [self stopUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = locations[0];
    
    NSLog(@"%@",location);
    
    //根据实际情况来调整触发范围
    [self adjustDistanceFilter:location];
    
    //上传数据
    [self uploadLocation:location];
}

- (void)adjustDistanceFilter:(CLLocation*)location
{
        NSLog(@"adjust:%f",location.speed);
    
//    if ( location.speed < self.minSpeed )
//    {
//        if ( fabs(self.distanceFilter-self.minFilter) > 0.1f )
//        {
//            self.distanceFilter = self.minFilter;
//        }
//    }
//    else
//    {
//        CGFloat lastSpeed = self.distanceFilter/self.minInteval;
//        
//        if ( (fabs(lastSpeed-location.speed)/lastSpeed > 0.1f) || (lastSpeed < 0) )
//        {
//            CGFloat newSpeed  = (int)(location.speed+0.5f);
//            CGFloat newFilter = newSpeed*self.minInteval;
//            
//            self.distanceFilter = newFilter;
//        }
//    }
}

- (void)uploadLocation:(CLLocation*)location{
    
}

@end
