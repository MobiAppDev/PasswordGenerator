//
//  Password.m
//  Password Generator
//
//  Created by Wayne Hill on 2/28/17.
//  Copyright © 2017 Surfside Software Solutions. All rights reserved.
//

#import "Password.h"

@interface Password ()

@property (readonly, strong, nonatomic) Password *password;

@end

@implementation Password

- (instancetype)init
{
  self = [super init];
  if (self) 
  {
    NSLog(@"\nNew Password Created");
      // Create the password.
  }
  return self;
}

@end
