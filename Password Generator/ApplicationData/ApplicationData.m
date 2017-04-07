//
//  ApplicationData.m
//  Password Generator
//
//  Created by Wayne Hill on 2/28/17.
//  Copyright © 2017 Surfside Software Solutions. All rights reserved.
//

#import "ApplicationData.h"

@interface ApplicationData ()

@property (readonly, strong, nonatomic) ApplicationData *passwordData;

@end

@implementation ApplicationData

- (instancetype)init
{
  self = [super init];
  if (self) 
  {
    NSLog(@"\nApplication Data Created");
      // Create the password.
  }
  return self;
}

@end
