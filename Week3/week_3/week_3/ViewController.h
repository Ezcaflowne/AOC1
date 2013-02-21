//
//  ViewController.h
//  week_3
//
//  Created by Willson Ayotte (NEW) on 2/18/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(int)add:(int)number1 with:(int)number2;
-(BOOL)compare:(int)number1 with:(int)number2;
-(NSString*)append:(NSString*)string1 with:(NSString*)string2;
-(void)displayAlertWithString:(NSString*)string;

@end