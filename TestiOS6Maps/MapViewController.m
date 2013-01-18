//
//  MapViewController.m
//  TestiOS6Maps
//
//  Created by pparreno on 1/16/13.
//  Copyright (c) 2013 pparreno. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize mapView;
@synthesize searchButton;
@synthesize searchField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.view setFrame:[[UIScreen mainScreen] applicationFrame]];
    [self setTitle:@"Map View"];
    [self.mapView setShowsUserLocation:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - user methods
- (void)onSearchButtonTap:(id)sender
{
    [searchField resignFirstResponder];
}



@end
