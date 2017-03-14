//
//  WatchSessionManager.h
//  iWatchDemo
//  WCSession 管理类别
//  Created by silicon on 17/3/13.
//  Copyright © 2017年 com.snailgames. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchConnectivity/WatchConnectivity.h>
@interface WatchSessionManager : NSObject<WCSessionDelegate>
@property (strong, nonatomic) WCSession *session;


/*
 *@brief 获取实例
 */
+ (WatchSessionManager *)getInstance;

/*
 *@brief 初始化
 */
- (void)startSession;

@end
