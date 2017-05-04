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
#import <CoreLocation/CoreLocation.h>
#import <HealthKit/HealthKit.h>

@interface InterfaceController : WKInterfaceController<WCSessionDelegate,CLLocationManagerDelegate>


//- (IBAction)setCusTime;
//
//- (IBAction)startTime;
//
//
//@property (strong, nonatomic) IBOutlet WKInterfaceButton *startBtn;
//
//@property (strong, nonatomic) IBOutlet WKInterfaceImage *imageV;
//
//@property (strong, nonatomic) IBOutlet WKInterfaceLabel *textdesc;

//@property (strong, nonatomic) IBOutlet WKInterfaceTable *contactTableV;
//
//
//- (IBAction)countBtn;
//
//- (IBAction)setting;


//@property (strong, nonatomic) IBOutlet WKInterfacePaymentButton *applePayBtn;
//
//@property (strong, nonatomic) IBOutlet WKInterfaceSeparator *separte;
//
//@property (strong, nonatomic) IBOutlet WKInterfaceSlider *slideBar;
//
//@property (strong, nonatomic) IBOutlet WKInterfaceGroup *group;
//
//@property (strong, nonatomic) IBOutlet WKInterfaceDate *date;
////
//@property (strong, nonatomic) IBOutlet WKInterfaceTimer *time;
//
//@property (strong, nonatomic) IBOutlet WKInterfaceButton *setting;
//
//@property (strong, nonatomic) IBOutlet WKInterfaceButton *start;
//
//@property (assign) BOOL flag;
//
//@property (strong, nonatomic) IBOutlet WKInterfaceLabel *test;

//@property (strong, nonatomic) IBOutlet WKInterfaceLabel *nameLable;

@property (strong, nonatomic) IBOutlet WKInterfaceImage *dymaticImage;

@property (strong, nonatomic) IBOutlet WKInterfaceGroup *animateGroup;

@property (strong, nonatomic) CLLocationManager *locationManager;

- (IBAction)playAnimate;


@end
