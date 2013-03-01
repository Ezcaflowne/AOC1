//
//  ViewController.m
//  week_4_iphone
//
//  Created by Willson Ayotte (NEW) on 2/28/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


/////////////////////////////////
// Start Willson Ayotte Week 4 //
/////////////////////////////////


// Submit button for the text field, if username, else no username.
-(void)onClick:(UIButton *) button{
    if (button.tag == 0){
        userText = [textField text];
        if (userText.length > 0) {
            labelText = [[NSString alloc] initWithFormat:@"User: %@ has been logged in.", userText];
        } else {
            labelText = [[NSString alloc] initWithFormat:@"Username Cannot Be Empty"];
        }
        userViewLabel.text = labelText;
    }
    else if(button.tag == 1)
        //Show date button, or Info button.
    {
        NSDate *now = [NSDate date];
        NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
        [formatDate setDateStyle:NSDateFormatterLongStyle];
        [formatDate setTimeStyle:NSDateFormatterFullStyle];
        NSString* dateSrg;
        dateSrg = [formatDate stringFromDate:now];
        UIAlertView *dateView = [[UIAlertView alloc] initWithTitle:@"Date" message:dateSrg delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [dateView show];
    }
    else if(button.tag == 2)
    {
        infoLabel.hidden = NO;
    }
    
}
//This are of code is to influence the keyboard to go away if the return is clicked
- (void)textFieldShouldReturn:(UITextField *) inputField
{
    [textField resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Main background color//
    self.view.backgroundColor = [UIColor whiteColor];
    
    //Username label//
    label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 100.0f, 30.0f)];
    label.text = @"Username:";
    label.textColor = [UIColor blackColor];
    label.textAlignment =  NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    //Username textfield//
    textField = [[UITextField alloc] initWithFrame:CGRectMake(99.0f, 20.0f, 210.0f, 30.0f)];
    [textField addTarget:self action:@selector(textFieldShouldReturn:) forControlEvents:UIControlEventEditingDidEndOnExit];
    textField.borderStyle = UITextBorderStyleRoundedRect;
//    textField.text = @""; <<- Used for a text field filler ->>
    [self.view addSubview:textField];
    
    //Username Login button//
    UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    button.frame = CGRectMake(222.0f, 60.0f, 85.0f, 28.0f);
    button.tintColor = [UIColor blueColor],
    [button setTitle:@"Login" forState:UIControlStateNormal];
    button.tag = 0;
    [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    //Call To Action///
    userViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 140.0f, 320.0f, 80.0f)];
    userViewLabel.backgroundColor = [UIColor lightGrayColor];
    userViewLabel.text = @"Please Enter Username";
    userViewLabel.numberOfLines = 2;
    userViewLabel.textColor = [UIColor blueColor];
    userViewLabel.textAlignment =  NSTextAlignmentCenter;
    [self.view addSubview:userViewLabel];
    
    //Date Button//
    dateButton = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    dateButton.frame = CGRectMake(10.0f, 260.0f, 100.0f, 45.0f);
    dateButton.tintColor = [UIColor blueColor],
    [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
    dateButton.tag = 1;
    [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dateButton];
    
    //Info button//
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    infoButton.frame = CGRectMake(10.0f, 330.0f, 25.0f, 25.0f);
    infoButton.tag = 2;
    [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:infoButton];
    
    //MyInfo//
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 360.0f, 320.0f, 75.0f)];
    infoLabel.text = @"This application was written by: Willson Ayotte";
    infoLabel.numberOfLines = 3;
    infoLabel.textColor = [UIColor blackColor];
    infoLabel.textAlignment =  NSTextAlignmentLeft;
    [self.view addSubview:infoLabel];
    infoLabel.hidden = YES;
}


/////////////////////////////////
// End Willson Ayotte Week 4 //
/////////////////////////////////

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
