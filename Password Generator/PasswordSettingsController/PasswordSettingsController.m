//
//  PasswordSettingsViewController.m
//  Password Generator
//
//  Created by Wayne Hill on 1/18/17.
//  Copyright © 2017 Surfside Software Solutions.
//  All rights reserved.

#import "PasswordSettingsController.h"

@interface PasswordSettingsController ()

@end

@implementation PasswordSettingsController

- (void)viewDidLoad {
    [super viewDidLoad];
  
  NSLog(@"PasswordSettingsController Created");
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
  
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //return the number of sections in table
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // return the number of rows in each section
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell_PasswordSetting" forIndexPath:indexPath];
  
    // Configure the cell...
    cell.textLabel.text = @"Test";
  
  return cell;
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


/*
- (IBAction)passwordLength:(UITextField *)sender
{
  NSLog(@"\npasswordLength");
}

- (IBAction)changePasswordLength:(UIStepper *)sender
{
  NSLog(@"\nchangePasswordLength");
}

- (IBAction)includeSymbols:(UISwitch *)sender
{
  NSLog(@"\nincludeSymbols");
}

- (IBAction)includeNumbers:(UISwitch *)sender
{
  NSLog(@"\nincludeNumbers");
}

- (IBAction)includeLowercaseLetters:(UISwitch *)sender
{
  NSLog(@"\nincludeLowercaseLetters");
}

- (IBAction)includeUppercaseLetters:(UISwitch *)sender
{
  NSLog(@"\nincludeUppercaseLetters");
}

- (IBAction)excludeSimilarLetters:(UISwitch *)sender
{
  NSLog(@"\nexcludeSimilarLetters");
}

- (IBAction)excludeAmbiguousLetters:(UISwitch *)sender
{
  NSLog(@"\nexcludeAmbiguousLetters");
}

- (IBAction)saveNewPasswords:(UISwitch *)sender
{
  NSLog(@"\nsaveNewPasswords");
}

- (IBAction)generatePassword:(UIButton *)sender
{
  NSLog(@"\ngeneratePassword");
}

- (IBAction)saveThisPassword:(UIButton *)sender
{
  NSLog(@"\nsaveThisPassword");
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  // Do any additional setup after loading
  // the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that
  // can be recreated.
}


- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  self.dataLabel.text = [self.dataObject description];
}
*/
@end
