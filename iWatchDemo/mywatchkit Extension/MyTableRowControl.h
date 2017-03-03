//
//  MyTableRowControl.h
//  iWatchDemo
//
//  Created by silicon on 17/3/3.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>
@interface MyTableRowControl : NSObject

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *contactName;

@property (strong, nonatomic) IBOutlet WKInterfaceLabel *phoneNo;

@end
