//
//  BaseViewController+Portrait.m
//  ViewControllerDemo
//
//  Created by Tom HU on 2013/08/07.
//  Copyright (c) 2013年 Tom HU. All rights reserved.
//

#import "BaseViewController_Portrait.h"

@interface BaseViewController_Portrait ()

@end

@implementation BaseViewController_Portrait

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
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    //navigation bar
    UIImageView *backbar = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    [backbar setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:backbar];
    
    UILabel *myNavigationTitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    [myNavigationTitle setTextAlignment:NSTextAlignmentCenter];
    myNavigationTitle.backgroundColor=[UIColor clearColor];
    [myNavigationTitle setFont:[UIFont fontWithName:@"Heiti SC" size:19.0]];
    [myNavigationTitle setTextColor:[UIColor whiteColor]];
    [self.view addSubview:myNavigationTitle];
    
    UIButton *backButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 44, 44)];
    [backButton setBackgroundColor:[UIColor redColor]];
    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)back:(id)sender
{
    if (![self.presentedViewController isBeingDismissed]) {
        [self dismissViewControllerAnimated:YES completion:^{}];
    }
}

-(BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}
@end
