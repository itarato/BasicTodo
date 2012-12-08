//
//  AddViewController.h
//  BasicTodo
//
//  Created by Peter Arato on 12/7/12.
//  Copyright (c) 2012 Peter Arato. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddTodoDelegate.h"

@interface AddViewController : UIViewController

// Delegator that can recieve the created new item.
@property (nonatomic) id<AddTodoDelegate> delegate;

// Reference to the item text field.
@property (nonatomic, retain) IBOutlet UITextField *itemField;

// Event handler on the add button.
- (IBAction)onClickAdd:(id)sender;

@end
