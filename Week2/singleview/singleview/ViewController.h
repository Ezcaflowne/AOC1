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
    //Methods for Week 2 Project 2
    UILabel *bookTitle, *authorLabel, *authorName, *publishedLabel, *publishDate, *summaryLabel, *summaryText, *listOfItemsLabel, *listOfItems;
    NSMutableString *mutableArray;
    //End Methods
}

@end
