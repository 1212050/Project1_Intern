//
//  NewDetailViewController.m
//  Day1_Project1
//
//  Created by Duy Dinh on 7/14/15.
//  Copyright (c) 2015 Duy Dinh. All rights reserved.
//

#import "NewDetailViewController.h"

@implementation NewDetailViewController

@synthesize NewLabel;
@synthesize NewName;

- (void) viewDidLoad
{
    [super viewDidLoad];

    NSString *display =[NSString stringWithFormat:@"Number of New is %@", NewName];

    NSMutableAttributedString *stringText = [[NSMutableAttributedString alloc] initWithString:display];
    //[stringText addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:15] range:NSMakeRange(11, 3)];
    [stringText addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(17, 1)];
    
    NewLabel.attributedText = stringText;
}

@end
