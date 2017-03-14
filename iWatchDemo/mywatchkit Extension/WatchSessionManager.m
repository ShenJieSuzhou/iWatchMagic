//
//  WatchSessionManager.m
//  iWatchDemo
//
//  Created by silicon on 17/3/13.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import "WatchSessionManager.h"

@implementation WatchSessionManager

+ (WatchSessionManager *)getInstance{
    static WatchSessionManager *_manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [WatchSessionManager new];
        _manager.session = [WCSession defaultSession];
    });
    
    return _manager;
}


- (void)startSession{
    [WatchSessionManager getInstance].session.delegate = self;
    [[WatchSessionManager getInstance].session activationState];
}


- (WCSession *)validReachableSession{
    if([WatchSessionManager getInstance].session.reachable){
        return [WatchSessionManager getInstance].session;
    }
    
    return nil;
}

- (void)session:(WCSession *)session activationDidCompleteWithState:(WCSessionActivationState)activationState error:(nullable NSError *)error{
    
}

- (void)session:(WCSession *)session didReceiveApplicationContext:(NSDictionary<NSString *, id> *)applicationContext{
    
}

- (void)session:(WCSession * __nonnull)session didFinishUserInfoTransfer:(WCSessionUserInfoTransfer *)userInfoTransfer error:(nullable NSError *)error{
    
}

- (void)session:(WCSession *)session didReceiveUserInfo:(NSDictionary<NSString *, id> *)userInfo{
    
}

- (void)session:(WCSession *)session didReceiveMessage:(NSDictionary<NSString *, id> *)message replyHandler:(void(^)(NSDictionary<NSString *, id> *replyMessage))replyHandler{
    
}

@end
