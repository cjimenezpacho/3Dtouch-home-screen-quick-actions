//
//  AppDelegate.m
//  Home Screen Quick Actions
//
//  Created by Carlos Jiménez Pacho on 15/12/15.
//  Copyright © 2015 Carlos Jiménez Pacho. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate (){
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    UIViewController *rootController = [[ViewController alloc] init];
    self.window.rootViewController = rootController;

    UIApplicationShortcutItem *shortcutItem = [launchOptions objectForKey:UIApplicationLaunchOptionsShortcutItemKey];
    return ![self handleShortCutItem:shortcutItem];
    
}


- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler{
    [self handleShortCutItem:shortcutItem];
}

- (BOOL)handleShortCutItem:(UIApplicationShortcutItem *)shortcutItem {
    BOOL handled = NO;
    
    if (shortcutItem == nil) {
        return handled;
    }
    
    handled = YES;
    UIAlertView *av = [[UIAlertView alloc]initWithTitle:@"Handle Shortcut" message:shortcutItem.type delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [av show];
    
    return handled;
    
}

@end
