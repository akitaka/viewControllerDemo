//
//  testViewController+PortraitViewController.m
//  ViewControllerDemo
//
//  Created by Tom HU on 2013/08/07.
//  Copyright (c) 2013年 Tom HU. All rights reserved.
//

#import "testViewController+PortraitViewController.h"
#import "testViewController+Landscape.h"

@interface testViewController_PortraitViewController ()

@end

@implementation testViewController_PortraitViewController

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
    [testLabel setText:@"Here is the Portrait test"];
    [self.view addSubview:testLabel];
    
    UIButton *anotherButton2Landscape = [[UIButton alloc]initWithFrame:CGRectMake(20, 150, 200, 50)];
    [anotherButton2Landscape setTitle:@"go2Landscape" forState:UIControlStateNormal];
    [anotherButton2Landscape setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:anotherButton2Landscape];
    [anotherButton2Landscape addTarget:self action:@selector(go:) forControlEvents:UIControlEventTouchUpInside];
}

-(IBAction)go:(id)sender
{
    testViewController_Landscape *land = [[testViewController_Landscape alloc]init];
    [self presentViewController:land animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
