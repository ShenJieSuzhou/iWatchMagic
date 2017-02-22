//
//  ViewController.m
//  iWatchDemo
//
//  Created by silicon on 17/2/22.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if([WCSession isSupported]){
        WCSession *session = [WCSession defaultSession];
        session.delegate = self;
        [session activateSession];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sendData:(id)sender {
    NSString *text = _textField.text;
    NSLog(@"++++%@++++", text);
    
    WCSession *session = [WCSession defaultSession];
    
    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"张三",@"Name", nil];
    
    [session sendMessage:dic replyHandler:^(NSDictionary<NSString *,id> * _Nonnull replyMessage) {
        NSLog(@"replay: %@", replyMessage);
        
    } errorHandler:^(NSError * _Nonnull error) {
        NSLog(@"Error: %@", error);
    }];
    
//    if(session.paired){
//        NSLog(@"paired");
//    }
//    
//    if(session.watchAppInstalled){
//        NSLog(@"watchAppInstalled");
//    }
//    
//    if(session.complicationEnabled){
//        NSLog(@"complicationEnabled");
//    }
//    
//    if(session.reachable){
//        NSLog(@"reachable");
//    }
   
}

- (void)session:(WCSession * __nonnull)session didFinishUserInfoTransfer:(WCSessionUserInfoTransfer *)userInfoTransfer error:(nullable NSError *)error{
    
}

- (void)session:(WCSession *)session activationDidCompleteWithState:(WCSessionActivationState)activationState error:(nullable NSError *)error __IOS_AVAILABLE(9.3) __WATCHOS_AVAILABLE(2.2){
    NSLog(@"11111");
}


- (void)sessionDidBecomeInactive:(WCSession *)session __IOS_AVAILABLE(9.3) __WATCHOS_UNAVAILABLE{
    NSLog(@"22222");
}


- (void)sessionDidDeactivate:(WCSession *)session __IOS_AVAILABLE(9.3) __WATCHOS_UNAVAILABLE{
    NSLog(@"33333");
}

- (void)session:(WCSession *)session didReceiveMessage:(NSDictionary<NSString *, id> *)message{
    NSLog(@"444444");
    NSLog(@"%@", message);
}

- (void)session:(WCSession *)session didReceiveUserInfo:(NSDictionary<NSString *, id> *)userInfo{
    NSLog(@"555555");
}
@end
