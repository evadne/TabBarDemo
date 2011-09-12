//
//  MenuViewController.m
//  TabBarDemo
//
//  Created by Chang Ming-Long on 11/8/27.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MenuViewController.h"

@implementation MenuViewController
@synthesize mcdMenu;
@synthesize menuDetailController;

- (id)initWithStyle:(UITableViewStyle)style
{
    //self = [super initWithStyle:style];
    
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
    self.mcdMenu = [[NSArray alloc] initWithObjects:@"超值早餐", @"有氧早餐",
                       @"超值午餐", @"超值全餐", @"快樂分享餐",
                    @"快樂兒童餐", @"天天超值選", @"飲料/點心", nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.mcdMenu count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        //顯示大於符號
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    }
    
    // Configure the cell...
    //UIImage *cellImage = [UIImage imageNamed:@"125-food.png"];
    //cell.imageView.image = cellImage;
    //cell.textLabel.text = [self.mcdMenu objectAtIndex: [indexPath row]];
    // Set up the cell…
    switch (indexPath.row) {
        case 0:
            cell.imageView.image = [UIImage imageNamed:@"tab_07.png"];
            break;
        case 1:
            cell.imageView.image = [UIImage imageNamed:@"tab_01.png"];
            break;
        case 2:
            cell.imageView.image = [UIImage imageNamed:@"tab_08.png"];
            break;
        case 3:
            cell.imageView.image = [UIImage imageNamed:@"tab_02.png"];
            break;
        case 4:
            cell.imageView.image = [UIImage imageNamed:@"tab_03.png"];
            break;
        case 5:
            cell.imageView.image = [UIImage imageNamed:@"tab_04.png"];
            break;
        case 6:
            cell.imageView.image = [UIImage imageNamed:@"tab_05.png"];
            break;
        case 7:
            cell.imageView.image = [UIImage imageNamed:@"tab_06.png"];
            break;
        default:
            break;
    }    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
    /*
    MenuDetailController *menuDetailController = [[MenuDetailController alloc] initWithNibName:@"MenuDetailController" bundle:nil];
    [self.navigationController pushViewController:menuDetailController animated:YES];
    [menuDetailController release];
    */
    //NSLog(@"%@", indexPath);
    /*
    // Navigation logic
    if(self.menuDetailController == nil) {
        //NSLog(@"NIL");
        MenuDetailController *view2 = [[MenuDetailController alloc] initWithNibName:@"MenuDetailController" bundle:[NSBundle mainBundle]];
        self.menuDetailController = view2;
        [view2 release];
    }
     */
    MenuDetailController *view2 = [[MenuDetailController alloc] initWithNibName:@"MenuDetailController" bundle:[NSBundle mainBundle]];
    self.menuDetailController = view2;
    [view2 setMenuIndex:indexPath];
    
    [self.navigationController pushViewController:self.menuDetailController animated:YES];
    
    [self.menuDetailController setTitle:[mcdMenu objectAtIndex:indexPath.row]];
    [view2 release];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

@end
