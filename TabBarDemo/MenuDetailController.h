//
//  MenuDetailController.h
//  TabBarDemo
//
//  Created by Chang Ming-Long on 11/8/28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuDetailController : UIViewController {
    NSIndexPath *menuIndex;
    NSMutableArray *menuDetail;
    NSArray *menuDetailBrfast;
    NSArray *menuDetailDaily;
    NSArray *menuDetailDrink;
    NSArray *menuDetailHappyShare;
    NSArray *menuDetailHappy;
    NSArray *menuDetailSuperBrfast;
    NSArray *menuDetailSuperLunch;
    NSArray *menuDetailSuperMeal;
    UITextView *menuText;
}
@property (nonatomic, retain) NSIndexPath *menuIndex;
@property (nonatomic, retain) NSMutableArray *menuDetail;
@property (nonatomic, retain) NSArray *menuDetailBrfast;
@property (nonatomic, retain) NSArray *menuDetailDaily;
@property (nonatomic, retain) NSArray *menuDetailDrink;
@property (nonatomic, retain) NSArray *menuDetailHappyShare;
@property (nonatomic, retain) NSArray *menuDetailHappy;
@property (nonatomic, retain) NSArray *menuDetailSuperBrfast;
@property (nonatomic, retain) NSArray *menuDetailSuperLunch;
@property (nonatomic, retain) NSArray *menuDetailSuperMeal;
@property (nonatomic, retain) IBOutlet UITextView *menuText;

@end
