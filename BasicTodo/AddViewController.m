//
//  AddViewController.m
//  BasicTodo
//
//  Created by Peter Arato on 12/7/12.
//  Copyright (c) 2012 Peter Arato. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom actions

- (void)onClickAdd:(id)sender {
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(onAddNewTodoItem:)]) {
        [self.delegate onAddNewTodoItem:self.itemField.text];
    }
}

@end
