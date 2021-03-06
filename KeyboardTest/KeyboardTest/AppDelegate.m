//
//  AppDelegate.m
//  KeyboardTest
//
//  Created by ZhangHeng on 15/2/28.
//  Copyright (c) 2015年 ZhangHeng. All rights reserved.
//

#import "AppDelegate.h"
#import "HRNetworkStatus.h"
#import "HRDevice.h"
#import "HRUtil.h"
#import "NSString+Util.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    HRNetworkType   type = [HRNetworkStatus currentNetworkStatus];
    NSLog(@"%d",type);
    
    NSString *localIp = [HRUtil getLocalIPAddress];
    NSLog(@"localIp: %@",localIp);
    
    HRDeviceType DeviceType = [HRDevice getCurrentDeviceType];
    NSLog(@"Device Type Name:%@",[[HRDevice nameEnumDic] objectForKey:@(DeviceType)]);
    
    NSString *string = @"ohohoh";
    if([string stringContainsChinesCharacters]){
        NSLog(@"chinese");
    }else{
        NSLog(@"no chinese");
    }
    
    NSString *testCN = @"我看看hahahaha位置是哪里";
    NSArray *cns = [testCN getChineseCharactersContains];
    NSLog(@"中文字符是%@",cns);
    
    NSString *emoj = @"😂😱😭😘😳😒😏😄😔😍😉☺😜😁";
    if([emoj stringContainsEmoji]){
        NSLog(@"有emoji串");
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
