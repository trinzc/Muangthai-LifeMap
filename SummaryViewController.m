//
//  SummaryViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/22/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "SummaryViewController.h"

@implementation SummaryViewController
@synthesize backBtn;

- (void)setPieChardValue{
    [MIMColor InitColors];
    _DFragmentedDoughNut *detailedDoughNut=[[_DFragmentedDoughNut alloc]initWithFrame:CGRectMake(45, 285, 100, 100)];
    detailedDoughNut.tint=MTTINT;
    detailedDoughNut.isShadow=YES;
    [detailedDoughNut setValuesArray:[NSArray arrayWithObjects:@"40",@"60", nil]];
    [detailedDoughNut setOutRadius:50 AndInnerRadius:0];
    [self.view addSubview:detailedDoughNut];

}

- (IBAction)backBtnPressed:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [self setPieChardValue];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
