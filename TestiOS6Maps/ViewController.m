//
//  ViewController.m
//  TestiOS6Maps
//
//  Created by pparreno on 1/16/13.
//  Copyright (c) 2013 pparreno. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize listViewController;
@synthesize mapViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.view setFrame:[[UIScreen mainScreen] applicationFrame]];
    [self setTitle:@"Find Outlets"];
    
    self.mapViewController = [[MapViewController alloc] init];
    [self.mapViewController.tabBarItem   setTitle:@"Map"];
    self.listViewController = [[ListViewController alloc] init];
    [self.listViewController.tabBarItem setTitle:@"List"];
    
//    UINavigationController *mapsNavController = [[UINavigationController alloc] initWithRootViewController:self.mapViewController];
//    UINavigationController *listNavController = [[UINavigationController alloc] initWithRootViewController:self.listViewController];
//    
//    [self setViewControllers:[NSArray arrayWithObjects:mapsNavController, listNavController, nil] animated:YES];
    [self setViewControllers:[NSArray arrayWithObjects:self.mapViewController, self.listViewController, nil] animated:YES];
    
    UIBarButtonItem *filterBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Filter" style:UIBarButtonItemStyleDone target:self action:@selector(onFilterButtonTap)];
    
    [self.navigationItem setRightBarButtonItem:filterBarButtonItem];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITabBarControllerDelegate

#pragma mark - UIActionSheetDelegate

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{

}

#pragma mark - user Methods

- (void) onFilterButtonTap
{
    UIActionSheet *filterActionSheet = [[UIActionSheet alloc] initWithTitle:@"Search Options" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Refine Search", @"Search Settings", nil];
    [filterActionSheet showInView:self.view];
    
}

@end
