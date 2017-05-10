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

_displayPassword.titleLabel.text = @"PkYm8R$dz.*FGa";

}

- (void)viewDidLoad 
{
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  NSString *valueToSave = @"Wayne Hill";
  [[NSUserDefaults standardUserDefaults] setObject:valueToSave forKey:@"userName"];
  [[NSUserDefaults standardUserDefaults] synchronize];

  NSString *userName = [[NSUserDefaults standardUserDefaults] stringForKey:@"userName"];
  NSLog(@"%@",userName);

  NSString *savedValue = [[NSUserDefaults standardUserDefaults]
stringForKey:@"preferenceName"];
  NSLog(@"%@",savedValue);

  //Setting Preferences
  NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
  
  // saving an NSString
  [prefs setObject:@"TextToSave" forKey:@"keyToLookupString"];
  // saving an NSInteger
  [prefs setInteger:42 forKey:@"integerKey"];
  // saving a Double
  [prefs setDouble:3.1415 forKey:@"doubleKey"];
  // saving a Float
  [prefs setFloat:1.2345678 forKey:@"floatKey"];
  
  // To synchronize prefs
  [prefs synchronize];
//Retreive Preferences
//  NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
  
  // getting an NSString
  NSString *myString = [prefs stringForKey:@"keyToLookupString"];
  NSLog(@"%@",myString);

  // getting an NSInteger
  NSInteger myInt = [prefs integerForKey:@"integerKey"];
  NSLog(@"%ld",(long)myInt);

  // getting an Float
  float myFloat = [prefs floatForKey:@"floatKey"];
  NSLog(@"%f",myFloat);

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
