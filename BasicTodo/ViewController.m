//
//  ViewController.m
//  BasicTodo
//
//  Created by Peter Arato on 12/7/12.
//  Copyright (c) 2012 Peter Arato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize table;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self->items = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.table reloadData];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom actions

- (void)onClickAddItem:(id)sender {
    if (self->addViewController == nil) {
        self->addViewController = [[AddViewController alloc] initWithNibName:@"AddViewController" bundle:nil];
        self->addViewController.delegate = self;
    }
    [self presentViewController:self->addViewController animated:YES completion:nil];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self->items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CELL_ID = @"simple-cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_ID];
    }
    
    cell.textLabel.text = [self->items objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self->items removeObjectAtIndex:indexPath.row];
    [self.table reloadData];
}

#pragma mark - AddTodoDelegate

- (void)onAddNewTodoItem:(NSString *)item {
    [self->items addObject:item];
    [self.table reloadData];
    [self->addViewController dismissViewControllerAnimated:YES completion:^{
        NSString *message = [NSString stringWithFormat:@"New item has been added: %@.", item];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Basic Todo" message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }];
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:[self->items count]];
}

@end
