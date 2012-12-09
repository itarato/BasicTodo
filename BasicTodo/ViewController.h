//
//  ViewController.h
//  BasicTodo
//
//  Created by Peter Arato on 12/7/12.
//  Copyright (c) 2012 Peter Arato. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddViewController.h"
#import "AddTodoDelegate.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, AddTodoDelegate> {
    // Storage of todo items.
    NSMutableArray *items;
    
    // View controller facilitating the item creation interface.
    AddViewController *addViewController;
}

// Reference to the table view.
@property (nonatomic, retain) IBOutlet UITableView *table;

// Event handler for the add new item button.
- (IBAction)onClickAddItem:(id)sender;

@end
