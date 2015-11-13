//
//  DemoCArrayViewController.m
//  TechmasterApp
//
//  Created by Phuong on 11/12/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "DemoCArrayViewController.h"

@interface DemoCArrayViewController ()

@end

@implementation DemoCArrayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    int array1[6] = {189, 222, 374, 144, 15, 16};

    for (int i = 0; i <= sizeof(array1)/sizeof(int); i++)  {
        int num = array1[i];
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
        [f setNumberStyle:NSNumberFormatterSpellOutStyle];
        
        NSString *s = [f stringFromNumber:[NSNumber numberWithInteger:num]];
        [self writeln:s];
    }
}



@end
