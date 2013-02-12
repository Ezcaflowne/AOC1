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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //NSMutableDictionary
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithCapacity:10];
    
    // setObject add objects to the dictionary
    [dictionary setObject:@"gozer" forKey:@"keymaster"];
    
    // check to see if the dictionary does contain a said object, and then remove that object
    if ([dictionary objectForKey:@"asdasdf"] != nil) {
        [dictionary removeObjectForKey:@"keymaster"];
    }
    
    // pulling an object back out of the dictionary
    NSString *value = [dictionary objectForKey:@"keymaster"];
    // removeObjectForKey removes just that object
    [dictionary removeObjectForKey:@"keymaster"];
    
    // removeAllObjects removes all objects from the dictionary
    [dictionary removeAllObjects];  
    
    NSLog(@"%@", [dictionary description]);
    
    
    
    
    //Container Type
    
    NSArray *tempArray = [[NSArray alloc] initWithObjects:@"test1", @"test2", nil];
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithCapacity:10];
    [mutableArray addObject:@"hello test 1"];
    [mutableArray addObject:@"secound item"];
    
    NSLog(@"%@", [mutableArray description]);
    
    for (int i=0; i<[mutableArray count]; i++)
    
    
    
    NSLog(@"Did enter didFinishLaunchingWithOptions");
    // One dementional array
    
    int arrayInt[5] = {
        3, 8, 10, 6, 9
    };
    
    for (int i=0; i<5; i++) {
        NSLog(@"index %d=%d", i, arrayInt[i]);
    }
    
    //Two dementinal array
    
    int tictactoe[3][3] = {
        {0, 0, 0},
        {1, 1, 1},
        {2, 2, 2}
    };
    
    for (int y=0; y<3; y++) {
        
        for (int x=0; x<3; x++) {
            NSLog(@"tictactoe at [%d][%d] = %d", x, y, tictactoe[x][y]);
        }
    }
    
    NSString *lowercaseString = @"awdasdads";
    NSString *uppercaseString = [lowercaseString uppercaseString];
    
    
    NSString *string = [[NSString alloc] initWithString:@"This is Stored"];
    
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:@"initialString"];
    
    [mutableString insertString:@" I live Here Now " atIndex:4];
    
    NSLog(mutableString);
    
    
    NSString *strTemp = [[NSString alloc]
    initWithString:@"Hello"];
    int numChars = [strTemp length];
    
    if (strTemp != nil) {
        NSLog(@"The memory was allocated.");
    }
    
    
    
    int temp = rand();
    NSLog(@"Temp before change: = %d", temp);
    NSLog(@"Temp after change:= %d", temp);

//    NSLog(@"hit line %d in file %s in function %s", __LINE__, __FILE__, __PRETTY_FUNCTION__);
    
    
    ////////////////////////////////////
    // Start of Willson Ayotte's Story//
    ////////////////////////////////////
    
    // Change between YES and NO
    bool money = YES;
    bool isPizzaLate = YES;
    // Change to Any Number < or > 30
    int traffic = 35;
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
