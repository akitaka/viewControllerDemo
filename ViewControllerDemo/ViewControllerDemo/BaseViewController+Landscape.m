//
//  BaseViewController+Landscape.m
//  ViewControllerDemo
//
//  Created by Tom HU on 2013/08/07.
//  Copyright (c) 2013年 Tom HU. All rights reserved.
//

#import "BaseViewController+Landscape.h"

@interface BaseViewController_Landscape ()

@end

@implementation BaseViewController_Landscape

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
    
    //navigation Bar
    UIImageView *backbar = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 480, 44)];
    if (IS_IPHONE_5) {
        [backbar setFrame:CGRectMake(0, 0, 568, 44)];
    }
    [backbar setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:backbar];
    
    UILabel *myNavigationTitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 480, 44)];
    if (IS_IPHONE_5) {
        [myNavigationTitle setFrame:CGRectMake(0, 0, 568, 44)];
    }
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

//// iOS 6.0 or later
-(BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

//// iOS 5.X or earlier
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight || toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft)
    {
        if ([[UIApplication sharedApplication] statusBarOrientation] != toInterfaceOrientation)
        {
            [[UIApplication sharedApplication] setStatusBarOrientation:toInterfaceOrientation animated:NO];
        }
        return YES;
    }
    else
    {
        return NO;
    }
}
@end
