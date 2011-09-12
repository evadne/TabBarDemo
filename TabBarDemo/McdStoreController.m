//
//  McdStoreController.m
//  TabBarDemo
//
//  Created by Chang Ming-Long on 11/8/29.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "McdStoreController.h"

@implementation McdStoreController

@synthesize goToMapRoute;
@synthesize mcdStore;
@synthesize text1, text2;

-(IBAction) goToMap:(id) sender
{
    locationManager = [[CLLocationManager alloc] init];
	locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [locationManager startUpdatingLocation];
    
    NSString *currlatlong = [NSString stringWithFormat:@"%f,%f", locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude ];
    [locationManager stopUpdatingLocation];
    [locationManager release];
    
    //NSLog(@"%f",locationManager.location.coordinate.latitude);
    NSString *latlong = self.text2.text; //@"25.044956,121.513387"; // TODO 改成經緯度
    
    NSString *url = [NSString stringWithFormat: @"http://maps.google.com/maps?saddr=%@&daddr=%@",
    [currlatlong stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding], [latlong stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
//    NSLog(@"%@",[mcdStore title]);
    [self setTitle:[mcdStore title]];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
