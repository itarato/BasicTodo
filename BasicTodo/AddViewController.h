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

@property (nonatomic) id<AddTodoDelegate> delegate;
@property (nonatomic, retain) IBOutlet UITextField *itemField;

- (IBAction)onClickAdd:(id)sender;

@end
