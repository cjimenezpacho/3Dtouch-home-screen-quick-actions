//
//  ViewController.h
//  Home Screen Quick Actions
//
//  Created by Carlos Jiménez Pacho on 15/12/15.
//  Copyright © 2015 Carlos Jiménez Pacho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    __weak IBOutlet UILabel *_lblNumberOfActions;
    
}

- (IBAction)addAction:(id)sender;
- (IBAction)removeAction:(id)sender;

@end

