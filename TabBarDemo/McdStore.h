//
//  McdStore.h
//  TabBarDemo
//
//  Created by Chang Ming-Long on 11/8/27.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface McdStore : NSObject <MKAnnotation>
{
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    NSString *opentime;
    NSString *address;
    NSString *tel;
    NSString *drivethrought;
    BOOL *mccafe;
    BOOL *playground;
    BOOL *wifi;
    BOOL *atm;
    NSString *accessibility;
    
    NSNumber *latitude;
    NSNumber *longitude;
}

@property (assign, nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *subtitle;
@property (nonatomic, retain) NSString *opentime;
@property (nonatomic, retain) NSString *address;
@property (nonatomic, retain) NSNumber *latitude;
@property (nonatomic, retain) NSNumber *longitude;
@property (nonatomic, retain) NSString *drivethrought;
@property (nonatomic, retain) NSString *tel;
@property BOOL *mccafe;

@end
