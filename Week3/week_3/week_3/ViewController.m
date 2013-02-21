//
//  ViewController.m
//  week_3
//
//  Created by Willson Ayotte (NEW) on 2/18/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    
    /////////////////////////////////
    // Start Willson Ayotte Week 3 //
    /////////////////////////////////
    
    
    //This function will take two NSInteger or int types and return the result of an addition between these two.
    int sum = [self add:2 with:2];
    NSNumber *numberSum = [[NSNumber alloc] initWithInt:sum];
    
    
    
    
    //Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    NSString *theNumberText = [NSString stringWithFormat:@"The number is "];
    NSString *numberToString = [numberSum stringValue];
    NSString *numberAddString = [self append:theNumberText with:numberToString];
    
    
    
    
    //Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function.
    int int1 = 7;
    int int2 = 7;
    BOOL compareNumber = [self compare:int1 with:int2];
    NSString *compareString = [NSString stringWithFormat:@"Numbers %d and %d are equal? %@", int1, int2, compareNumber?@"YES":@"NO"];
    
    
    
    
    //Call the Append function with two NSStrings.
    //Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    NSString *appendString = [self append:@"X-Code " with:@"is Awesome!"];
    
    
    
    
    [self displayAlertWithString:numberAddString];
    [self displayAlertWithString:compareString];
    [self displayAlertWithString:appendString];
    
}




//Create a function called Add.
-(int)add:(int)value1 with:(int)value2
{
    //take two NSInteger or int types
    //return result of an addition between these two.
    return value1 + value2;
}




//Create a BOOL function called Compare that takes two NSInteger values.
-(BOOL)compare:(int)value1 with:(int)value2 {
    //Return YES or NO based on whether the values are equal.
    if (value1 == value2) {
        return YES;
    } else {
        return NO;
    }
}




//Create a function called Append.
-(NSString *)append:(NSString *)string1 with:(NSString *)string2
{
    //This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
    NSMutableString *appendedString = [NSMutableString stringWithString:string1];
    NSString *string = [appendedString stringByAppendingString:string2];
    return string;
}




//DisplayAlertWithString Function
-(void)displayAlertWithString:(NSString *)string
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:string delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    //Take the passed in NSString and display it in the alert view
    if (alert != nil) {
        [alert show];
    }

}



    /////////////////////////////////
    // END Willson Ayotte Week 3 //
    /////////////////////////////////



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

@end