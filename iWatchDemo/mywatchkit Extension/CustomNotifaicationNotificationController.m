//
//  CustomNotifaicationNotificationController.m
//  iWatchDemo
//
//  Created by silicon on 17/3/7.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import "CustomNotifaicationNotificationController.h"

@interface CustomNotifaicationNotificationController ()

@end

@implementation CustomNotifaicationNotificationController

- (instancetype)init {
    self = [super init];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}


//- (void)didReceiveNotification:(UNNotification *)notification withCompletion:(void(^)(WKUserNotificationInterfaceType interface)) completionHandler {
//    // This method is called when a notification needs to be presented.
//    // Implement it if you use a dynamic notification interface.
//    // Populate your dynamic notification interface as quickly as possible.
//    
////    [_title setText:notification.request.title];
//    
//    // After populating your dynamic notification interface call the completion block.
//    completionHandler(WKUserNotificationInterfaceTypeCustom);
//}

- (void)didReceiveLocalNotification:(UILocalNotification *)localNotification
                     withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler{
 
    [_title setText:localNotification.alertTitle];
    [_subTitle setText:localNotification.alertTitle];
    
    completionHandler(WKUserNotificationInterfaceTypeCustom);
}


@end



