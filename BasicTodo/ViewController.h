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

@interface ViewController : UIViewController <UITableViewDataSource, AddTodoDelegate> {
    NSMutableArray *items;
    AddViewController *addViewController;
}

@property (nonatomic, retain) IBOutlet UITableView *table;

- (IBAction)onClickAddItem:(id)sender;

@end
