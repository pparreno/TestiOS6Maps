//
//  ViewController.h
//  TestiOS6Maps
//
//  Created by pparreno on 1/16/13.
//  Copyright (c) 2013 pparreno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewController.h"
#import "MapViewController.h"

@interface ViewController : UITabBarController <UITabBarControllerDelegate,UIActionSheetDelegate>

@property (strong, nonatomic) ListViewController *listViewController;
@property (strong, nonatomic) MapViewController *mapViewController;

@end
