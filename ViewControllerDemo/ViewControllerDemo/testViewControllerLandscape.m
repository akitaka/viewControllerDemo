//
//  testViewController+Landscape.m
//  ViewControllerDemo
//
//  Created by Tom HU on 2013/08/07.
//  Copyright (c) 2013年 Tom HU. All rights reserved.
//

#import "testViewControllerLandscape.h"

@interface testViewControllerLandscape ()

@end

@implementation testViewControllerLandscape

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
	// Do any additional setup after loading the view.
    UILabel *testLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 50, 250, 50)];
    [testLabel setText:@"Here is the Landscape test"];
    [self.view addSubview:testLabel];
    [self.myNavigationTitle setText:@"hello Landscape"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
