//
//  ViewController.h
//  singleview
//
//  Created by Willson Ayotte (NEW) on 2/11/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import <UIKit/UIKit.h>

// change ViewController if you want for multiple screens like MainViewControler for Main Screen(Login Screen)
@interface ViewController : UIViewController
{
    //meaningful detailed method names following iOS Conventions
    //methodName or thisIsAMethodName
    UILabel *bookTitle, *authorLabel, *authorName, *publishedLabel, *publishDate, *summaryLabel, *summaryText, *listOfItemsLabel, *listOfItems;
    NSMutableString *mutableArray;
}

@end
