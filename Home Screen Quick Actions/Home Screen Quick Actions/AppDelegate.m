//
//  AppDelegate.m
//  Home Screen Quick Actions
//
//  Created by Carlos Jiménez Pacho on 15/12/15.
//  Copyright © 2015 Carlos Jiménez Pacho. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    UIViewController *rootController = [[ViewController alloc] init];
    self.window.rootViewController = rootController;

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {}

- (void)applicationDidEnterBackground:(UIApplication *)application {}

- (void)applicationWillEnterForeground:(UIApplication *)application {}

- (void)applicationDidBecomeActive:(UIApplication *)application {}

- (void)applicationWillTerminate:(UIApplication *)application {}


- (BOOL)handleShortCutItem:(UIApplicationShortcutItem *)shortcutItem {
    BOOL handled = NO;
    
    if (shortcutItem == nil) {
        return handled;
    }
    
    //if ([shortcutItem.type isEqualToString:kFavoritesQuickAction]) {
    //    handled = YES;
    //}
    
    if (handled) {
        // do action here
    }
    
    return handled;
    
}

@end
