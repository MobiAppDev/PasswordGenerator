//
//  DataViewController.m
//  Password Generator
//
//  Created by Wayne Hill on 1/18/17.
//  Copyright © 2017 Surfside Software Solutions. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()

@end

@implementation DataViewController
- (IBAction)GenerateNewPassword:(id)sender {
  NSLog(@"\'Generate Password\' Button Pressed.");
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
