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

//var password = @"24"
//NSUserDefaults.standardUserDefaults().setObject(password, forKey: "storedPassword")
//println(NSUserDefaults.standardUserDefaults().objectForKey("storedPassword"))

_displayPassword.titleLabel.text = @"PkYm8R$dz.*FGa";

}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  self.dataLabel.text = [self.dataObject description];
}


@end
