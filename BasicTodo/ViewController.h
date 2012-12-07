//
//  ViewController.h
//  BasicTodo
//
//  Created by Peter Arato on 12/7/12.
//  Copyright (c) 2012 Peter Arato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource> {
    NSMutableArray *items;
}

@property (nonatomic, retain) IBOutlet UITableView *table;

- (IBAction)onClickAddItem:(id)sender;

@end
