//
//  AddTodoDelegate.h
//  BasicTodo
//
//  Created by Peter Arato on 12/8/12.
//  Copyright (c) 2012 Peter Arato. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AddTodoDelegate <NSObject>

- (void)onAddNewTodoItem:(NSString *)item;

@end
