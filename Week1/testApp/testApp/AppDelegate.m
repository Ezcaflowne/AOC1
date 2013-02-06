//
//  AppDelegate.m
//  testApp
//
//  Created by Willson Ayotte (NEW) on 2/4/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    
    // casting of variable data types
    
    // Example of Casting
//    int seven = 7;
//    int two  = 2;
//    
//    float floatanswer = (float)seven / (float)two;
//    
//    int intanswer = seven / two;
    
    // Example of Casting
    // C x (9/5) + 32 = F
    // celcius 23.0 fahrenheit = 73.4
//    float celcius = 23.0f;
//    
//    float result = celcius * ((float)9/5) + 32;
//    
//    int hello = 0;
    // End of Casting
    
//    NSLog(@"result=%.1f", result);
    
    // Conditional Example
    //  == equals
    //  != not equal
    //  < less than
    //  <= less than or equal to
    //  > greater than
    //  >= greater than or equal to
    //  && and
    //  || or
    
    // if else statement
//    int temp = 0;
//    if (temp !=0){
//        NSLog(@"true");
//    }
//    else{
//        NSLog(@"false");
//    }
    // End of if else statement
    
    // Example of else if else statement.
//    int numTires = 2;
//    
//    if (numTires >= 4) {
//        NSLog(@"This is a car.");
//    }
//    else if (numTires <= 2) {
//        NSLog(@"This is a motorcycle.");
//    }
//    else {
//        NSLog(@"I have no idea what kind of vehicale this is.");
//    }
    // End else if else statement.
    // End of Conditionals.
    
    // Example of For Loops - Single, Nested and Break
    
    // for loop layout
    // for (init expression; loop_condition; loop expression)
    // {
    //      program execution
    // }
    
    // for loop forward
//    for (int x=0; x < 10; x++)
//    {
//        NSLog(@"hello: %d", x);
//    }
    // End for loop forward
    
    
    // for loop reverse
//    for (int y=10; y >= 0; y--)
//    {
//        NSLog(@"hello: %d", y);
//    }
    // End for loop reverse
    
    // for loops with break
//    
//    for (int count = 0; count < 10; count++)
//    {
//        NSLog(@"count=%d", count);
//        if (count == 5)
//        {
//            break;
//        }
//    }
    // End for loop with break
    
    // Example of While Loop
    
    // while loop
//    int count = 0;
//    
//    while (count <= 100) {
//        // print out the count value
//        NSLog(@"count = %d\n", count);
//        // increment count
//        count ++;
//    }
    // End While Loop
    
    // Example of Do While Loop
//    
//    int num = 0;
//    
//    do {
//        NSLog(@"count=%d", num);
//        num++;
//    } while (num > 10);
    // End Do While Loop
    
    
    
    // Start of Willsons Code
    // Example of a IF Else statement.
//    int legs = 4;
//    
//    if (legs == 2){
//        NSLog(@"You must be a human.");
//    }
//    else{
//        NSLog(@"Your some type of animal.");
//    }
    // End of If Else statement.
    
    // Example of Else If
//    int legs = 44;
//    
//    if (legs == 2){
//        NSLog(@"You must be a human.");
//    }
//    else if (legs == 4){
//        NSLog(@"You must be a dog.");
//    }
//    else {
//        NSLog(@"You must be some other type of animal.");
//    }
    // End of Else If
    
    
//    int people = 2;
//    
//    if (people == false){
//        NSLog(@"There is no one around.");
//    }
//    else if (people == true){
//        NSLog(@"There is someone here.");
//    }
//    else {
//        NSLog(@"What are people?");
//    }
    
    
    int money = NO;
    int payPhone = 1;
    float pizzaLate = 30.50;
    int pizzaNotLate = 30;
    int traffic = YES;
    
    NSLog(@"Hungry man picks up payphone to order pizza.");
    
    for (int coins = payPhone; payPhone < 4; payPhone++){
        NSLog(@"%d", payPhone);
    }
    if (money == YES) {
        NSLog(@"%d coins were inserted into the payphone, and pizza man is called to deliver pizza",payPhone);
    }
    else
    {
        NSLog(@"Not enough coins to place call, hungry man is going to starve.");
    }
    
    if (money == YES) {
        NSLog(@"Pizza man will be making a pizza.");
    }
    else if (money == NO) {
        NSLog(@"Pizza man wont be making pizza for hungry man.");
    }
    else {
        NSLog(@"Pizza man will make pizza for someone with money.");
    }
    
    

    
   
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



@end
