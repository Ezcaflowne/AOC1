//
//  ViewController.h
//  week_4_iphone
//
//  Created by Willson Ayotte (NEW) on 2/28/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSString *userText, *labelText;
    UITextField *textField;
    UILabel *userViewLabel, *infoLabel, *label;
    UIButton *dateButton, *infoButton;
}

- (void)textFieldShouldReturn:(UITextField *) inputField;

-(void)onClick:(UIButton *)button;

@end
