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
    
    
    ////////////////////////////////////
    // Start of Willson Ayotte's Story//
    ////////////////////////////////////
    
    // Change between YES and NO
    bool money = YES;
    bool isPizzaLate = NO;
    // Change to Any Number < or > 30
    int traffic = 20;
    // Dont Change Value
    int insertCoin = 1;
    float pizzaLate = 30;
    int pizzaNotLate = 30;

    NSLog(@"Hungry man picks up payphone to order pizza.");
    // For Loop
    for (int coins = insertCoin; insertCoin < 4; insertCoin++){
        NSLog(@"%d", insertCoin);
    }
    // End For Loop
    
    // IF Else Statement
    if (money == YES) {
        NSLog(@"%d coins were inserted into the payphone, and pizza man is called to deliver pizza.",insertCoin);
    }
    else
    {
        NSLog(@"Not enough coins to place call, hungry man is going to starve.");
    }
    // End IF Else Statement
    
    // Else If Else Statement
    if (money == YES) {
        NSLog(@"Pizza man will be leaving to deliver pizza.");
    }
    else if (money == NO) {
        NSLog(@"Pizza man wont be making pizza for hungry man.");
        return YES;
    }
    else {
        NSLog(@"Pizza man will make pizza for someone with money.");
    }
    // End Else If Else Statement
    
    // While Loop w/ Break
    while (traffic > 30) {
        // print out the count value
        NSLog(@"Pizza man is waiting %d\n minuates in traffic.", traffic);
        // increment count
        traffic ++;
        if (traffic > 31)
        {
            NSLog(@"Aww shit, I'm late!");
            break;
        }
    }
    // End While Loop w/ break
    
    // If Statement
    if (traffic < 30) {
        NSLog(@"I'm making great time!");
    }
    // End If Statement
    
    // And Comparison w/ float answer
    if (traffic > 30 && isPizzaLate == YES) {
        float floatanswer = (float) traffic + (float) pizzaLate;
        NSLog(@"The pizza took %.2f total minuates to deliver. The pizza is FREE!", floatanswer);
    } else {
        NSLog(@"Remember pizza dude, stay under %d minuates or its Free...", pizzaNotLate);
    }
    // End Comparison w/ float answer
    
    // OR comparison
    if (isPizzaLate || money) {
        NSLog(@"Damn, not even a tip...!");
    }
    // End OR comparison
    
    ////////////////////////////////
    // End Willson Ayotte's Story //
    ////////////////////////////////
    
   
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
