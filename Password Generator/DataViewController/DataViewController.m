//
//  DataViewController.m
//  Password Generator
//
//  Created by Wayne Hill on 1/18/17.
//  Copyright © 2017 Surfside Software Solutions. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()


@property (weak, nonatomic) IBOutlet UIButton *displayPassword;
@property (weak, nonatomic) NSString *aNewPasswordString;

@end

@implementation DataViewController

@synthesize aNewPasswordString = _aNewPasswordString;

- (IBAction)GeneratePassword:(id)sender 
{
  NSLog(@"\'Generate Password\' button touched up inside.");

  // create a new password array
  NSMutableArray *password = [[NSMutableArray alloc]init];
  // add a password to array
  [password addObject:@"password1"];

// verify that a password was created
  NSString *tmp = [password objectAtIndex:0];
  NSLog(@"%@", tmp);

// display the password on screen
_displayPassword.titleLabel.text = [password objectAtIndex:0];
//@"PkYm8R$dz.*FGa";
}

- (void)viewDidLoad 
{
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  NSLog(@"DataViewController Created");

  // Create Application Preferences
  NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
  // Set an NSString in Preferences
  [prefs setObject:@"TextToSave" forKey:@"stringKey"];
  // Set an NSInteger in Preferences
  [prefs setInteger:42 forKey:@"integerKey"];
  // Set a Double in Preferences
  [prefs setDouble:3.1415 forKey:@"doubleKey"];
  // Set a Float in Preferences
  [prefs setFloat:1.2345678 forKey:@"floatKey"];
  // Set a Bool in Preferences
  [prefs setBool:false forKey:@"boolKey"];
  // Synchronize Preferences (prefs)
//  [prefs synchronize];
  //Retreive an NSString from Preferences
  NSString *myString = [prefs  stringForKey:@"stringKey"];
  NSLog(@"%@",myString);
  // Retreive an NSInteger from Preferences
  NSInteger myInt = [prefs integerForKey:@"integerKey"];
  NSLog(@"%ld",(long)myInt);
  // Retreive a Double from Preferences
  double myDouble = [prefs doubleForKey:@"doubleKey"];
  NSLog(@"%f",myDouble);
  // Retreive a Float from Preferences
  float myFloat = [prefs floatForKey:@"floatKey"];
  NSLog(@"%f",myFloat);
  // Retreive a Bool from Preferences
  bool myBool = [prefs boolForKey:@"boolKey"];
  NSLog(@"%u",myBool);

  // Create Application Data
  NSUserDefaults *appData = [NSUserDefaults standardUserDefaults];
  // Set an NSString in AppData
  [appData setObject:@"Safari" forKey:@"applicationName"];
  // Synchronize Application Data (appData)
//  [appData synchronize];
  // Retreive an NSString from AppData
  NSString *myApplicationName = [appData  stringForKey:@"applicationName"];
  // Display My Application Name
  NSLog(@"%@",myApplicationName);

// Show the whole dictionary
NSLog(@"%@",appData.dictionaryRepresentation);

}


- (void)didReceiveMemoryWarning 
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (void)viewWillAppear:(BOOL)animated 
{
  [super viewWillAppear:animated];
  self.dataLabel.text = [self.dataObject description];
}

/*
// NOT IMPLIMENTED YET
// These functions could be used to set
// and retrieve permanent NSUser data

static func setObject(value:AnyObject ,key:String)
{
  let pref = NSUserDefaults.standardUserDefaults()
  pref.setObject(value, forKey: key)
  pref.synchronize()
}

static func getObject(key:String) -> AnyObject
{
  let pref = NSUserDefaults.standardUserDefaults()
  return pref.objectForKey(key)!
}
*/
@end
