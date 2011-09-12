//
//  MenuDetailController.m
//  TabBarDemo
//
//  Created by Chang Ming-Long on 11/8/28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MenuDetailController.h"

@implementation MenuDetailController
@synthesize menuIndex,menuDetail;
@synthesize menuDetailBrfast, menuDetailDaily, menuDetailDrink, menuDetailHappyShare, menuDetailHappy, menuDetailSuperMeal, menuDetailSuperLunch, menuDetailSuperBrfast, menuText;

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
    
    self.menuText.text = @"‧ 24小時營業餐廳，早上4點超值早餐開賣；一般餐廳早上6點開賣\n"
"‧ 供應時間至早上10:30前(以各餐廳實際供應為準);歡樂送早餐供應時間至10:15(以進線訂餐時間為準)，上午10:15~10:30為餐點供應轉換時間，實際產品內容請洽歡樂送電話點餐服務\n"
"‧ 套餐飲料可補差額升級其他冷/熱飲，若飲料選擇低於30元的冷/熱飲，恕不退差額\n"
"‧ 圖片僅供參考，產品內容、價格、包裝、餐具、供應時間及口味以各麥當勞餐廳實際供應為準\n"
"‧ 本活動產品之原價格依各地區麥當勞餐廳價目表為準\n"
"‧ 本活動不得與其他優惠同時使用，麥當勞保有隨時調整活動辦法、活動時間、優惠內容及終止活動之權利\n"
"‧ 增點鬆餅糖漿、果醬、乳酪每份5元\n"
"‧ 增點蛋、吉事片、火腿片、焦糖糖漿每份10元\n"
"‧ 增點豬肉片每片20元\n"
"‧ 熱咖啡續杯半價優惠僅限當日消費之相同品項\n"
"‧ 部分餐廳不供應那堤/卡布奇諾/亞美利加諾/蘋果汁/奶昔\n"
"‧ 麥當勞提供多樣化的餐組選擇，建議您依據實際需求，選擇最佳的餐組與價格組合\n"
"‧ 因應餐廳營運需求，如遇餐廳清潔消毒時段，部分餐廳暫不外送，實際服務情形請洽歡樂送訂餐專線\n"
"‧ \"Coca-Cola\"、\"Coca-Cola zero\"、「雪碧」、「爽健美茶」及弧形飄帶圖案是可口可樂公司的註冊商標\n"
"‧ 「雀巢茶品」is a tradmark of Société des Procuits Nestlé SA. Licensed to Beverage Partners Worldwide S.A.\n";
    
    self.menuDetailSuperBrfast = [[NSArray alloc] initWithObjects:@"super_brfast_title.png",@"super_brfast_title2.png",
                                  @"super_brfast_01.png", @"super_brfast_02.png",
                                  @"super_brfast_03.png", @"super_brfast_04.png",@"super_brfast_05.png", @"super_brfast_06.png",
                                  @"super_brfast_07.png", @"super_brfast_08.png",@"super_brfast_09.png", @"super_brfast_10.png",
                                  @"super_brfast_11.png", @"super_brfast_12.png",@"super_brfast_13.png", @"super_brfast_14.png",
                                  @"super_brfast_15.png", @"super_brfast_16.png",@"super_brfast_17.png", @"super_brfast_18.png",
                                  @"super_brfast_19.png", nil];
    self.menuDetailBrfast = [[NSArray alloc] initWithObjects:@"brfast_title.png",@"brfast_title2.png",
                             @"brfast_01.png", @"brfast_02.png",
                             @"brfast_03.png", @"brfast_04.png", @"brfast_05.png",
                             @"brfast_06.png", @"brfast_07.png", nil];

    self.menuDetailSuperLunch = [[NSArray alloc] initWithObjects:@"super_lunch_title.png",@"super_lunch_title2.png",
                                  @"super_lunch_01.png", @"super_lunch_02.png",
                                  @"super_lunch_03.png", @"super_lunch_04.png",@"super_lunch_05.png", @"super_lunch_06.png",
                                  @"super_lunch_07.png", @"super_lunch_08.png",@"super_lunch_09.png", @"super_lunch_10.png",
                                  @"super_lunch_11.png", @"super_lunch_12.png",nil];
    self.menuDetailSuperMeal = [[NSArray alloc] initWithObjects:@"super_meal_title.png",@"super_meal_title2.png",
                             @"super_meal01.png", @"super_meal02.png",
                             @"super_meal03.png", @"super_meal04.png", @"super_meal05.png",
                             @"super_meal06.png", @"super_meal07.png", @"super_meal08.png", @"super_meal09.png", nil];
    self.menuDetailHappyShare = [[NSArray alloc] initWithObjects:@"happyshare01.png",@"happyshare02.png", nil];
    self.menuDetailHappy = [[NSArray alloc] initWithObjects:@"happy01.png",@"happy02.png",@"happy03.png",@"happy04.png",@"happy05.png", nil];
    self.menuDetailDaily = [[NSArray alloc] initWithObjects:@"daily01.png",@"daily02.png",
                             @"daily03.png", nil];
    self.menuDetailDrink = [[NSArray alloc] initWithObjects:@"drink_01.png",@"drink_02.png",
                             @"drink_03.png", @"drink_04.png",
                             @"drink_05.png", @"drink_06.png", nil];

    self.menuDetail = [[NSMutableArray alloc] init];
    [self.menuDetail addObject:self.menuDetailSuperBrfast];
    [self.menuDetail addObject:self.menuDetailBrfast];
    [self.menuDetail addObject:self.menuDetailSuperLunch];
    [self.menuDetail addObject:self.menuDetailSuperMeal];
    [self.menuDetail addObject:self.menuDetailHappyShare];
    [self.menuDetail addObject:self.menuDetailHappy];
    [self.menuDetail addObject:self.menuDetailDaily];
    [self.menuDetail addObject:self.menuDetailDrink];
    // Do any additional setup after loading the view from its nib.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[menuDetail objectAtIndex:menuIndex.row] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    //UIImage *cellImage = [UIImage imageNamed:@"brfast_01.png"];
    //cell.imageView.image = cellImage;
    //cell.textLabel.text = [self.mcdMenu objectAtIndex: [indexPath row]];
    //NSLog(@"cell: %@", [menuDetail objectAtIndex:menuIndex.row]);
    
    cell.imageView.image = [UIImage imageNamed:[[menuDetail objectAtIndex:menuIndex.row] objectAtIndex:indexPath.row]];

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    UIImage *testimage = [UIImage imageNamed:[[menuDetail objectAtIndex:menuIndex.row] objectAtIndex:indexPath.row]];
    return testimage.size.height + 5.0f;
    //return 80;
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
