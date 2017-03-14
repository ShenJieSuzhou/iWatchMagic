//
//  CustomNotifaicationNotificationController.h
//  iWatchDemo
//
//  Created by silicon on 17/3/7.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface CustomNotifaicationNotificationController : WKUserNotificationInterfaceController

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *title;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *subTitle;


@end
