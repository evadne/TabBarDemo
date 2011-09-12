//
//  McdStoreController.h
//  TabBarDemo
//
//  Created by Chang Ming-Long on 11/8/29.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "McdStore.h"

@interface McdStoreController : UIViewController
{
    CLLocationManager *locationManager;
    UIButton *goToMapRoute;
    UITextView *text1;
    UITextView *text2;
    McdStore *mcdStore;
}

@property (nonatomic, retain) IBOutlet UIButton *goToMapRoute;
@property (nonatomic, retain) IBOutlet UITextView *text1;
@property (nonatomic, retain) IBOutlet UITextView *text2;
@property (nonatomic, retain) McdStore *mcdStore;

-(IBAction) goToMap:(id) sender;

@end
