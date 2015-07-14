//
//  NewsViewController.m
//  Day1_Project1
//
//  Created by Duy Dinh on 7/14/15.
//  Copyright (c) 2015 Duy Dinh. All rights reserved.
//

#import "NewsViewController.h"
#import "NewDetailViewController.h"

@interface NewsViewController ()

@end

@implementation NewsViewController{
    NSArray *tableData;
}
- (IBAction)timeSegmentChanged:(UISegmentedControl *)sender {
    NSLog(@"timeSegment is changed");
}

@synthesize NewTable;

- (void)viewDidLoad
{
    [super viewDidLoad];
    tableData = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Indentifier= @"NumberCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Indentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Indentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.imageView.image= [UIImage imageNamed:@"one.jpg"];
    
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"ShowNewDetail"])
    {
        NSIndexPath *indexPath = [self.NewTable indexPathForSelectedRow];
        NewDetailViewController *destViewController = segue.destinationViewController;
        destViewController.NewName = [tableData objectAtIndex:indexPath.row];
    }
}

@end
