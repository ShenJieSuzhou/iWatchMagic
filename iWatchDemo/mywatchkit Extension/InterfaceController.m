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
@synthesize animateGroup = _animateGroup;
@synthesize locationManager = _locationManager;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.

//    _flag = NO;
    
    if([WCSession isSupported]){
        WCSession *session = [WCSession defaultSession];
        session.delegate = self;
        [session activateSession];
    }
    
//    NSMutableDictionary *phoneContact = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"13776054770", @"约翰",
//                                         @"13776054770", @"约翰1",
//                                         @"13776054771", @"约翰2",
//                                         @"13776054772", @"约翰3",
//                                         @"13776054773", @"约翰4", nil];
//    
//    [_contactTableV setNumberOfRows:phoneContact.count withRowType:@"MyTableRowControl"];
//    NSArray *namesArray = phoneContact.allKeys;
//    
//    for(int i = 0; i < phoneContact.count; i++){
//        NSString *name = [namesArray objectAtIndex:i];
//        NSString *phone = [phoneContact objectForKey:name];
//        
//        MyTableRowControl *row = [_contactTableV rowControllerAtIndex:i];
//        [row.contactName setText:name];
//        [row.phoneNo setText:phone];
//    }
    
    self.locationManager = [CLLocationManager new];
    [self.locationManager requestWhenInUseAuthorization];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
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

- (void)session:(WCSession *)session activationDidCompleteWithState:(WCSessionActivationState)activationState
          error:(nullable NSError *)error __IOS_AVAILABLE(9.3) __WATCHOS_AVAILABLE(2.2){

}

- (void)sessionDidBecomeInactive:(WCSession *)session __IOS_AVAILABLE(9.3) __WATCHOS_UNAVAILABLE{
    
}

- (void)sessionDidDeactivate:(WCSession *)session __IOS_AVAILABLE(9.3) __WATCHOS_UNAVAILABLE{

}

- (void)session:(WCSession *)session didReceiveMessage:(NSDictionary<NSString *, id> *)message
   replyHandler:(void(^)(NSDictionary<NSString *, id> *replyMessage))replyHandler{
//    NSString *name = [message objectForKey:@"Name"];
//    [_nameLable setText:name];
    
}

- (IBAction)playAnimate {
    
//    NSURLSession *session = [NSURLSession sharedSession];
//    NSURL *url = [NSURL URLWithString:@"https://pic4.zhimg.com/4aaf7b7b81c7e432663a852aaf905b5b_200x112.jpg"];
//    
//    NSURLSessionDownloadTask *downloadTask = [session downloadTaskWithURL:url completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        if(!error){
//            dispatch_async(dispatch_get_main_queue(), ^{
//                NSLog(@"图片下载完成 %@", location);
//                UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
//                NSLog(@"%@", image);
//                [_dymaticImage setImage:image];
//            });
//        }else{
//        
//        }
//    }];
//    
//    [downloadTask resume];
    
//    [_dymaticImage setImageNamed:@"fire"];
//    [_dymaticImage startAnimatingWithImagesInRange: NSMakeRange(1, 6) duration:1 repeatCount:1];
    
    
//    [self.animateGroup setBackgroundImageNamed:@"fire"];
//    [self.animateGroup startAnimatingWithImagesInRange:NSMakeRange(1, 6) duration:7 repeatCount:1];
}

//- (IBAction)countBtn {
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
//
//- (IBAction)setting {
//    NSTimeZone* sourceTimeZone = [NSTimeZone timeZoneWithName:@"UTC"];
//    [_date setTimeZone:sourceTimeZone];
//}
//
//- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex{
//    NSLog(@"我点击了 %ld 行", (long)rowIndex);
//}

///*+++++++++++++++++++++++++ Test ++++++++++++++++++++++++++++++*/
//
//- (void)locate{
//    // 判断定位操作是否被允许
//    _locationManager=[[CLLocationManager alloc] init];
//    _locationManager.delegate=self;
//    _locationManager.desiredAccuracy=kCLLocationAccuracyBest;
//    _locationManager.distanceFilter=10;
//    [_locationManager requestWhenInUseAuthorization];//使用程序其间允许访问位置数据（iOS8定位需要）
//    
//    [_locationManager startUpdatingLocation];//开启定位
//}

//#pragma mark - CoreLocation Delegate
//
//-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
//{
//    //此处locations存储了持续更新的位置坐标值，取最后一个值为最新位置，如果不想让其持续更新位置，则在此方法中获取到一个值之后让locationManager stopUpdatingLocation
//    CLLocation *currentLocation = [locations lastObject];
//    // 获取当前所在的城市名
//    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
//    //根据经纬度反向地理编译出地址信息
//    [geocoder reverseGeocodeLocation:currentLocation completionHandler:^(NSArray *array, NSError *error)
//     {
//         if (array.count > 0){
//             
//             CLPlacemark *placemark = [array objectAtIndex:0];
//             //NSLog(@%@,placemark.name);//具体位置
//             //获取城市
//             NSString *city = placemark.locality;
//             if (!city) {
//                 //四大直辖市的城市信息无法通过locality获得，只能通过获取省份的方法来获得（如果city为空，则可知为直辖市）
//                 city = placemark.administrativeArea;
//             }
//             NSLog(@"定位完成:%@",city);
//             
//             [manager stopUpdatingLocation];
//         }else if (error == nil && [array count] == 0)
//         {
////             NSLog(@"No results were returned.");
//         }else if (error != nil)
//         {
////             NSLog(@"An error occurred = %@, error");
//         }
//     }];  
//}


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
    CLLocation *currentLocation = [locations lastObject];

    NSLog(@"%f", currentLocation.coordinate.latitude);
    NSLog(@"%f", currentLocation.coordinate.longitude);
    
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    
}



@end



