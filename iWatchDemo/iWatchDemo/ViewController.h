//
//  ViewController.h
//  iWatchDemo
//
//  Created by silicon on 17/2/22.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WatchConnectivity/WatchConnectivity.h>

@interface ViewController : UIViewController<WCSessionDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

