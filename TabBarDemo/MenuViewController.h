//
//  MenuViewController.h
//  TabBarDemo
//
//  Created by Chang Ming-Long on 11/8/27.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuDetailController.h"

@interface MenuViewController : UIViewController < UITabBarDelegate, UITableViewDataSource>
{
    NSArray *mcdMenu;
    MenuDetailController *menuDetailController; 
}
@property (nonatomic, retain) NSArray *mcdMenu;
@property (nonatomic, retain) IBOutlet MenuDetailController *menuDetailController; 

@end
