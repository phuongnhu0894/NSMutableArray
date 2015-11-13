//
//  NSArray+Extension.m
//  TechmasterApp
//
//  Created by Phuong on 11/10/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)

- (NSArray *)uniqueArray {
    NSMutableArray *uniqueArray = [[NSMutableArray alloc] init ];
    for (NSObject *object in self) {
        if (![uniqueArray containsObject:object]) {
            [uniqueArray addObject:object];
        }
    }
    return uniqueArray;
}

@end
