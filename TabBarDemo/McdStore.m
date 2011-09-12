//
//  McdStore.m
//  TabBarDemo
//
//  Created by Chang Ming-Long on 11/8/27.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "McdStore.h"

@implementation McdStore
@synthesize coordinate, title, subtitle, opentime, address, latitude, longitude, drivethrought, tel, mccafe;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

@end
