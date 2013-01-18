//
//  MapViewController.h
//  TestiOS6Maps
//
//  Created by pparreno on 1/16/13.
//  Copyright (c) 2013 pparreno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UITextField *searchField;

- (IBAction)onSearchButtonTap:(id)sender;

@end
