//
//  ViewController.m
//  singleview
//
//  Created by Willson Ayotte (NEW) on 2/11/13.
//  Copyright (c) 2013 Willson Ayotte (NEW). All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    
    /////////////////////////////////////////////
    // Start Willson Code for Week 2 Project 2 //
    /////////////////////////////////////////////
    
    [super viewDidLoad];
    
    // added image and added shadow
    // http://nachbaur.com/blog/fun-shadow-effects-using-custom-calayer-shadowpaths
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Perksofbeingwallflower1.png"]];
    imageView.frame = CGRectMake(430, 60, 320, 500);
    imageView.layer.shadowColor = [UIColor blackColor].CGColor;
    imageView.layer.shadowOpacity = 0.7f;
    imageView.layer.shadowOffset = CGSizeMake(10.0f, 10.0f);
    imageView.layer.shadowRadius = 5.0f;
    [self.view addSubview:imageView];
    
    //Change the background color of the view to any color you wish.
    self.view.backgroundColor = [UIColor brownColor];
    
    //Title of book
    //Create a UILabel and place it at the top of the view. This is used as the title of the book. Center the text for this label.
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 60, 320, 20)];
    if (bookTitle != nil)
    {
        bookTitle.textAlignment = NSTextAlignmentCenter;
        bookTitle.textColor = [UIColor whiteColor];
        bookTitle.backgroundColor = [UIColor redColor];
        bookTitle.text = @"The Perks of Being a Wallflower";
    }
    [self.view addSubview: bookTitle];
    
    //Author Label
    //Create another label that contains the text "Author:" with the text right justified.
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 90, 100, 20)];
    if (authorLabel != nil)
    {
        authorLabel.textAlignment = NSTextAlignmentRight;
        authorLabel.textColor = [UIColor magentaColor];
        authorLabel.backgroundColor = [UIColor purpleColor];
        authorLabel.text = @"Author: ";
    }
    [self.view addSubview: authorLabel];
    
    //Authors name
    //Create a UILabel to the right of the author title label and have it contain the name of the author of the book you chose. This text will be left justified.
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(110, 90, 220, 20)];
    if (authorName != nil)
    {
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor purpleColor];
        authorName.backgroundColor = [UIColor magentaColor];
        authorName.text = @" Stephen Chbosky";
    }
    [self.view addSubview: authorName];
    
    //Publish label
    //Create a UILabel on the next line called "Published:". This text is right justified.
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 120, 100, 20)];
    if (publishedLabel != nil)
    {
        publishedLabel.textAlignment = NSTextAlignmentRight;
        publishedLabel.textColor = [UIColor darkGrayColor];
        publishedLabel.backgroundColor = [UIColor yellowColor];
        publishedLabel.text = @"Published: ";
        [self.view addSubview: publishedLabel];
    }
    
    //Publish date
    //Create a label next to the Published label and add the text of when the book was published. This text is left justified
    publishDate = [[UILabel alloc] initWithFrame:CGRectMake(110, 120, 220, 20)];
    if (publishDate != nil)
    {
        publishDate.textAlignment = NSTextAlignmentLeft;
        publishDate.textColor = [UIColor yellowColor];
        publishDate.backgroundColor = [UIColor darkGrayColor];
        publishDate.text = @" February 1, 1999";
    }
    [self.view addSubview: publishDate];
    
    //Summery label
    //Create a UILabel with the text "Summary". This text is left justified.
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, 100, 20)];
    if (summaryLabel != nil)
    {
        
        summaryLabel.textAlignment = NSTextAlignmentLeft;
        summaryLabel.textColor = [UIColor lightGrayColor];
        summaryLabel.backgroundColor = [UIColor blackColor];
        summaryLabel.text = @"Summary: ";
    }
    [self.view addSubview: summaryLabel];
    
    //Summery of book
    //Create another UILabel that contains a small summary of the book's plot. This text is centered and should span multiple lines.
    summaryText = [[UILabel alloc] initWithFrame:CGRectMake(10, 175, 320, 300)];
    if (summaryText != nil)
    {
        summaryText.textAlignment = NSTextAlignmentCenter;
        summaryText.textColor = [UIColor blackColor];
        summaryText.backgroundColor = [UIColor lightGrayColor];
        summaryText.numberOfLines = 15;
        summaryText.text = @"It's about a young boy that is just starting high school and is having a hard time coping with the suicide of his only friend, along with the death of an aunt that he blames on himself. Altough, throughout the book he learns with the help of two seniors and his English teacher more about life, dealing with love, drugs and sexuality. He falls in love for the first time, goes to parties and takes drugs. He learns to share his problems and opinions.";
    }
    [self.view addSubview: summaryText];
    
    //List of items
    // Create an NSArray of 5 items talked about in the book. These items will be NSStrings. Add the items to the array.
    NSArray *itemsArrayList = [[NSArray alloc] initWithObjects:@"Freshman",@"Suicide",@"Parties",@"Music",@"Love", nil];
    
    //Create a variable of type NSMutableString and allocate it. Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas. The last item should be preceded by an "and" (For example: dinosaurs, jeeps, storm, giant turkeys, and eating people).
    NSMutableString *mutableStringList = [[NSMutableString alloc] init];
    
    //Looping through the itemsArray and append to itemsArrayList
    for (int i=0; i < [itemsArrayList count]; i++)
    {
        NSString *listEachItem = [itemsArrayList objectAtIndex:i];
        
        //Last list item without a comma, adds "and " and ends
        if ([itemsArrayList count] == i+1){
            [mutableStringList appendString:[[NSString alloc] initWithFormat:@" and %@", listEachItem]];
            
        //List of items are seperated by a comma ,
        } else {
            [mutableStringList appendString:[[NSString alloc] initWithFormat:@"%@, ", listEachItem]];
        }
    }
    
    //List of items label
    //Create a label with the text "List of items" and add it to the parent view. Make sure the text is left justified.
    listOfItemsLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 485, 150, 20)];
    if (listOfItemsLabel != nil)
    {
        listOfItemsLabel.textAlignment = NSTextAlignmentLeft;
        listOfItemsLabel.textColor = [UIColor whiteColor];
        listOfItemsLabel.backgroundColor = [UIColor orangeColor];
        listOfItemsLabel.text = @"List of Items: ";
    }
    [self.view addSubview: listOfItemsLabel];
    
    //List of items table
    //Create another label beneath and set the text to the NSMutableString text. Increase the number of lines if necessary. Make sure the text in this label is centered
    listOfItems = [[UILabel alloc] initWithFrame:CGRectMake(10, 510, 320, 50)];
    
    if (listOfItems != nil)
    {
        listOfItems.textAlignment = NSTextAlignmentCenter;
        listOfItems.textColor = [UIColor orangeColor];
        listOfItems.backgroundColor = [UIColor whiteColor];
        listOfItems.numberOfLines = 5;
        listOfItems.text = mutableStringList;
        
    }
    [self.view addSubview: listOfItems];
    
    ////////////////////////////
    //END of Week 2 Project 2 //
    ////////////////////////////
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
