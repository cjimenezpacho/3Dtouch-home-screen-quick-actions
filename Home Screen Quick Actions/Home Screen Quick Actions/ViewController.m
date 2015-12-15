//
//  ViewController.m
//  Home Screen Quick Actions
//
//  Created by Carlos Jiménez Pacho on 15/12/15.
//  Copyright © 2015 Carlos Jiménez Pacho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSInteger _numberOfActions;
}

@end

static const NSInteger MAX_ACTIONS = 4;

@implementation ViewController

- (instancetype) init{
    self = [super initWithNibName:@"ViewController" bundle:nil];
    if(self){
        _numberOfActions = 0;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setNumberOfActions];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addAction:(id)sender {
    if(_numberOfActions<MAX_ACTIONS){
        _numberOfActions++;
        [self setNumberOfActions];
        [self addActionToShortCutItems];
    }
    
}

- (IBAction)removeAction:(id)sender {
    if(_numberOfActions>0){
        _numberOfActions--;
        [self setNumberOfActions];
        [self removeActionToShortCutItems];
    }
}


- (void) setNumberOfActions{
    _lblNumberOfActions.text = [NSString stringWithFormat:@"Actions: %ld",_numberOfActions];

}

- (void) addActionToShortCutItems{
    NSArray <UIApplicationShortcutItem *> *existingShortcutItems = [[UIApplication sharedApplication] shortcutItems];
    if([existingShortcutItems count]){
        NSMutableArray <UIApplicationShortcutItem *> *updatedShortcutItems = [existingShortcutItems mutableCopy];
        NSInteger numberOfActions = [existingShortcutItems count];
        [updatedShortcutItems addObject:[self createItemNumber:numberOfActions]];
        [[UIApplication sharedApplication] setShortcutItems: updatedShortcutItems];
    }else{
        [UIApplication sharedApplication].shortcutItems = @[[self createItemNumber:0]];
    }
}

- (UIApplicationShortcutItem*)createItemNumber:(NSInteger)number{
    UIApplicationShortcutItem *newItem = [[UIApplicationShortcutItem alloc]initWithType:[NSString stringWithFormat:@"type%ld",number]
                                                                         localizedTitle:[NSString stringWithFormat: NSLocalizedString(@"Action %ld", nil),number]
                                                                      localizedSubtitle:nil
                                                                                   icon:nil
                                                                               userInfo:nil];
    return newItem;

}

- (void) removeActionToShortCutItems{
    NSArray <UIApplicationShortcutItem *> *existingShortcutItems = [[UIApplication sharedApplication] shortcutItems];
    NSMutableArray <UIApplicationShortcutItem *> *updatedShortcutItems = [existingShortcutItems mutableCopy];
    [updatedShortcutItems removeObjectAtIndex:[updatedShortcutItems count]-1];
    [[UIApplication sharedApplication] setShortcutItems: updatedShortcutItems];
}
@end
