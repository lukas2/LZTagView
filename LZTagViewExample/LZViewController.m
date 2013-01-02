//
//  LZViewController.m
//  LZTagViewExample
//
//  Created by Lukas Zielinski on 12/30/12.
//  Copyright (c) 2012 Lukas Zielinski. All rights reserved.
//

#import "LZViewController.h"

@interface LZViewController ()

@end

@implementation LZViewController

@synthesize tagView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray *tags = @[@"abc", @"def", @"ghi", @"jkl", @"mno", @"pqr", @"stu", @"vwx", @"123", @"456", @"789"];
    
    for( NSString *tag in tags )
    {
        LZTag *lzt = [[LZTag alloc] initWithTag:tag];
        [self.tagView.tags addObject:lzt];
    }
    
    NSArray *suggestedTags = @[@"example tag 1", @"example tag 2", @"example tag 3", @"example tag 4", @"example tag 5", @"example tag 6", @"example tag 7"];
    for( NSString *tag in suggestedTags )
    {
        LZTag *lzt = [[LZTag alloc] initWithTag:tag];
        [self.tagView.suggestedTags addObject:lzt];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
