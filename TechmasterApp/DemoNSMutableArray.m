//
//  DemoNSMutableArray.m
//  TechmasterApp
//
//  Created by Phuong on 11/12/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "DemoNSMutableArray.h"

@interface DemoNSMutableArray ()

@end

@implementation DemoNSMutableArray

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *paragraph = @"I am happy to join with you today in what will go down in history as the greatest demonstration for freedom in the history of our nation.Five score years ago, a great American, in whose symbolic shadow we stand today, signed the Emancipation Proclamation. This momentous decree came as a great beacon light of hope to millions of Negro slaves who had been seared in the flames of withering injustice. It came as a joyous daybreak to end the long night of their captivity.\nBut one hundred years later, the Negro still is not free. One hundred years later, the life of the Negro is still sadly crippled by the manacles of segregation and the chains of discrimination. One hundred years later, the Negro lives on a lonely island of poverty in the midst of a vast ocean of material prosperity. One hundred years later, the Negro is still languished in the corners of American society and finds himself an exile in his own land. And so we've come here today to dramatize a shameful condition.\nIn a sense we've come to our nation's capital to cash a check. When the architects of our republic wrote the magnificent words of the Constitution and the Declaration of Independence, they were signing a promissory note to which every American was to fall heir. This note was a promise that all men, yes, black men as well as white men, would be guaranteed the \"unalienable Rights\" of \"Life, Liberty and the pursuit of Happiness.\" It is obvious today that America has defaulted on this promissory note, insofar as her citizens of color are concerned. Instead of honoring this sacred obligation, America has given the Negro people a bad check, a check which has come back marked \"insufficient funds.\"";
    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@" .,\n\""]; // tach tu khi gap nhung ky tu nay
    NSMutableArray *words = [[paragraph componentsSeparatedByCharactersInSet:set] mutableCopy]; // tao array co the thay doi duoc
    [words removeObject:@""]; //xoa ky tu rong
//    NSLog(@"%@", words);
    NSArray *exception = @[@"i", @"the", @"am", @"is", @"to", @"an", @"were", @"was"]; //nhung ky tu bo di
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (NSString *word in words) {
        if (![exception containsObject:word.lowercaseString] &&
            ![result containsObject:word.lowercaseString]) { // dam bao tu khong bi trung lap
            [result addObject:word.lowercaseString];
            //[self writeln:word];
        }
    }
    NSCountedSet *setCount = [[NSCountedSet alloc] initWithArray:result]; // dem so lan xuat hien cua tu
    for (id num in setCount) {
        NSLog(@"%@ - %lu", num, (unsigned long)[setCount countForObject:num]);
    }
    
}





@end
