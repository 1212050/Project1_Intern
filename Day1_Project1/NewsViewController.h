//
//  NewsViewController.h
//  Day1_Project1
//
//  Created by Duy Dinh on 7/14/15.
//  Copyright (c) 2015 Duy Dinh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *NewTable;

@end
