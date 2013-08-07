//
//  ViewController.m
//  ViewControllerDemo
//
//  Created by Tom HU on 2013/08/07.
//  Copyright (c) 2013年 Tom HU. All rights reserved.
//

#import "ViewController.h"
#import "testViewController+Landscape.h"
#import "testViewController+PortraitViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)go2PortraitViewController:(id)sender {
    testViewController_PortraitViewController *port = [[testViewController_PortraitViewController alloc]init];
    [self presentViewController:port animated:YES completion:nil];
}

- (IBAction)go2LandscapeViewController:(id)sender {
    testViewController_Landscape *land =[[testViewController_Landscape alloc]init];
    [self presentViewController:land animated:YES completion:nil];
}
@end
