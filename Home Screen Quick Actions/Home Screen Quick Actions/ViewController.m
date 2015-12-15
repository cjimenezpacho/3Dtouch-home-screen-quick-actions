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
    }
    
}

- (IBAction)removeAction:(id)sender {
    if(_numberOfActions>0){
        _numberOfActions--;
        [self setNumberOfActions];
    }
}

- (void) setNumberOfActions{
        _lblNumberOfActions.text = [NSString stringWithFormat:@"Actions: %ld",_numberOfActions];
}
@end
