//
//  InterfaceController.h
//  mywatchkit Extension
//
//  Created by silicon on 17/2/22.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>
#import <WatchConnectivity/WatchConnectivity.h>

@interface InterfaceController : WKInterfaceController<WCSessionDelegate>

@property (strong, nonatomic) IBOutlet WKInterfaceButton *startBtn;

@property (strong, nonatomic) IBOutlet WKInterfaceImage *imageV;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *textdesc;

@end
