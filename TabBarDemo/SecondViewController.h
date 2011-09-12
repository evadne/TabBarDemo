//
//  SecondViewController.h
//  TabBarDemo
//
//  Created by Chang Ming-Long on 11/8/27.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreData/CoreData.h>

#import "McdStoreController.h"

@interface SecondViewController : UIViewController <MKMapViewDelegate, NSFetchedResultsControllerDelegate>
{
    IBOutlet MKMapView *mapView;
    IBOutlet UIButton *showAllStore;
    IBOutlet UIButton *showOnlyDtStore;
    
    CLLocationManager *locationManager;
    
    NSURLConnection *urlConnection;
    NSMutableData *receivedData;
    
    NSXMLParser *xmlParser;
    
    NSMutableArray *mcdStores;
    
    McdStoreController *mcdStoreController;
}
@property (nonatomic, retain) UIButton *showAllStore;
@property (nonatomic, retain) UIButton *showOnlyDtStore;
@property (nonatomic, retain) NSURLConnection *urlConnection;
@property (nonatomic, retain) NSMutableData *receivedData;
@property (nonatomic, retain) NSMutableArray *mcdStores;

@property (nonatomic, retain) NSXMLParser *xmlParser;

@property (nonatomic, retain) IBOutlet McdStoreController *mcdStoreController; 

@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end
