//
//  ModelController.h
//  Password Generator
//
//  Created by Wayne Hill on 1/18/17.
//  Copyright © 2017 Surfside Software Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataViewController;

@interface ModelController : NSObject <UIPageViewControllerDataSource>

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(DataViewController *)viewController;

@end

