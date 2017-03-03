//
//  InterfaceController.m
//  mywatchkit Extension
//
//  Created by silicon on 17/2/22.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import "InterfaceController.h"
#import "MyTableRowControl.h"

@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.

//    _flag = NO;
    
    if([WCSession isSupported]){
        WCSession *session = [WCSession defaultSession];
        session.delegate = self;
        [session activateSession];
    }
    
    NSMutableDictionary *phoneContact = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"13776054770", @"约翰",
                                         @"13776054770", @"约翰1",
                                         @"13776054771", @"约翰2",
                                         @"13776054772", @"约翰3",
                                         @"13776054773", @"约翰4", nil];
    
    [_contactTableV setNumberOfRows:phoneContact.count withRowType:@"MyTableRowControl"];
    NSArray *namesArray = phoneContact.allKeys;
    
    for(int i = 0; i < phoneContact.count; i++){
        NSString *name = [namesArray objectAtIndex:i];
        NSString *phone = [phoneContact objectForKey:name];
        
        MyTableRowControl *row = [_contactTableV rowControllerAtIndex:i];
        [row.contactName setText:name];
        [row.phoneNo setText:phone];
    }
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}


//- (IBAction)setLabelText {
//    
////    [_textdesc setText:@"222222"];
//    
//    WCSession *session = [WCSession defaultSession];
//    
//    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"张三",@"Name", nil];
//    
//    [session sendMessage:dic replyHandler:^(NSDictionary<NSString *,id> * _Nonnull replyMessage) {
//        NSLog(@"replay: %@", replyMessage);
//        
//    } errorHandler:^(NSError * _Nonnull error) {
//        NSLog(@"Error: %@", error);
//    }];
//}

- (void)session:(WCSession *)session activationDidCompleteWithState:(WCSessionActivationState)activationState error:(nullable NSError *)error __IOS_AVAILABLE(9.3) __WATCHOS_AVAILABLE(2.2){

}

- (void)sessionDidBecomeInactive:(WCSession *)session __IOS_AVAILABLE(9.3) __WATCHOS_UNAVAILABLE{
    
}

- (void)sessionDidDeactivate:(WCSession *)session __IOS_AVAILABLE(9.3) __WATCHOS_UNAVAILABLE{

}

- (void)session:(WCSession *)session didReceiveMessage:(NSDictionary<NSString *, id> *)message{
    NSLog(@"---------%@", message);
}

- (void)session:(WCSession *)session didReceiveUserInfo:(NSDictionary<NSString *, id> *)userInfo{
    NSLog(@"---------%@", userInfo);
    
    NSString *name = [userInfo objectForKey:@"Name"];
//    [_textdesc setText:name];
}

//- (IBAction)setCusTime {
//    //设置时区
////    NSTimeZone *zone = [NSTimeZone defaultTimeZone];
////    [_date setTimeZone:zone];
////    
////    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierBuddhist];
////    [_date setCalendar:calendar];
//    
////    NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
//
////    NSTimeZone* sourceTimeZone = [NSTimeZone timeZoneWithName:@"UTC"];
////
////    NSLog(@"%@", sourceTimeZone);
////    
////    [_date setTimeZone:zone];
////    NSLog(@"111");
////    
//    [_test setText:@"11111"];
//}
//
//- (IBAction)startTime {
//    if(!_flag){
//        [_time start];
//        _flag = YES;
//        [_start setTitle:@"停止"];
//    }else{
//        [_time stop];
//        [_start setTitle:@"开始"];
////        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
////        [formatter setDateFormat:@"HH:mm:ss"];
////        NSDate *newDate = [formatter dateFromString:@"0:00:00"];
////        [_time setDate:newDate];
//        _flag = NO;
//    }
//}

- (IBAction)countBtn {
    [_time start];
//    [_time stop];
}

- (IBAction)setting {
    NSTimeZone* sourceTimeZone = [NSTimeZone timeZoneWithName:@"UTC"];
    [_date setTimeZone:sourceTimeZone];
}
@end



