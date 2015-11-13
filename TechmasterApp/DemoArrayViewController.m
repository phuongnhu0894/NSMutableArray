//
//  DemoArray.m
//  TechmasterApp
//
//  Created by student on 11/5/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "DemoArrayViewController.h"
#import "NSArray+Extension.h"

@interface DemoArrayViewController ()


@end

@implementation DemoArrayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //In ra danh sach 11 cau thu
    NSBundle* bundle = [NSBundle mainBundle];
    NSString* plistPath = [bundle pathForResource:@"data" ofType:@"plist"];
    NSArray *players = [NSArray arrayWithContentsOfFile:plistPath];


    for (int i = 0; i<= 11; i++) {
        NSDictionary *player = [players objectAtIndex:i];
        [self writeln:[NSString stringWithFormat:@"player: %@.%@ (%@)", [player objectForKey:@"Number"], [player objectForKey:@"Name"],[player objectForKey:@"Position"] ]];
    }
    
    //In ra danh sach cac phan tu khong trung lap
    NSArray *array1 = @[@"abc", @"abc", @"xyz", @"hhddhd", @"jjjjj", @"vvvvv"];
    NSArray *uniqueArray = [array1 uniqueArray];
    [self writeln:@"Danh sach cac phan tu khong trung lap:"];
    for (NSString *string in uniqueArray) {
        [self writeln:string];
    }
    
    
}




@end
