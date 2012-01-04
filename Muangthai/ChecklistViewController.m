//
//  ChecklistViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/22/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "ChecklistViewController.h"

@implementation ChecklistViewController

@synthesize Delegate,needsViewController;

@synthesize nextBtn;

@synthesize RetireBtn1,RetireBtn2;
@synthesize TaxBtn1,TaxBtn2;
@synthesize EducationBtn1,EducationBtn2;
@synthesize AssuranceBtn1,AssuranceBtn2;
@synthesize SavingBtn1,SavingBtn2;

@synthesize RetireEnable1,RetireEnable2;
@synthesize TaxEnable1,TaxEnable2;
@synthesize EducationEnable1,EducationEnable2;
@synthesize AssuranceEnable1,AssuranceEnable2;
@synthesize SavingEnable1,SavingEnable2;

@synthesize RetirePageEnable,TaxPageEnable,EducationPageEnable,AssurancePageEnable,SavingPageEnable;

//Retire Page ------------------------------------------------------------------------------------
- (IBAction)RetireBtn1Pressed:(id)sender{
    UIImage *checkImg = [UIImage imageNamed:@"check_box.png"];
    UIImage *uncheckImg = [UIImage imageNamed:@"uncheck_box.png"];
    if (RetireEnable1 == 0) {
        RetireEnable1 = 1;
        NSLog(@"selected:retire1");
        [RetireBtn1 setImage:checkImg forState:UIControlStateNormal];
    }
    else {
        RetireEnable1 = 0;
        NSLog(@"unselected:retire1");
        [RetireBtn1 setImage:uncheckImg forState:UIControlStateNormal]; 
    }
}

- (IBAction)RetireBtn2Pressed:(id)sender{
    UIImage *checkImg = [UIImage imageNamed:@"check_box.png"];
    UIImage *uncheckImg = [UIImage imageNamed:@"uncheck_box.png"];
    if (RetireEnable2 == 0) {
        RetireEnable2 = 1;
        NSLog(@"selected:retire2");
        [RetireBtn2 setImage:checkImg forState:UIControlStateNormal];
    }
    else {
        RetireEnable2 = 0;
        NSLog(@"unselected:retire2");
        [RetireBtn2 setImage:uncheckImg forState:UIControlStateNormal]; 
    }
}

//Tax Page ------------------------------------------------------------------------------------
- (IBAction)TaxBtn1Pressed:(id)sender{
    UIImage *checkImg = [UIImage imageNamed:@"check_box.png"];
    UIImage *uncheckImg = [UIImage imageNamed:@"uncheck_box.png"];
    if (TaxEnable1 == 0) {
        TaxEnable1 = 1;
        NSLog(@"selected:Tax1");
        [TaxBtn1 setImage:checkImg forState:UIControlStateNormal];
    }
    else {
        TaxEnable1 = 0;
        NSLog(@"unselected:Tax1");
        [TaxBtn1 setImage:uncheckImg forState:UIControlStateNormal]; 
    }
}

- (IBAction)TaxBtn2Pressed:(id)sender{
    UIImage *checkImg = [UIImage imageNamed:@"check_box.png"];
    UIImage *uncheckImg = [UIImage imageNamed:@"uncheck_box.png"];
    if (TaxEnable2 == 0) {
        TaxEnable2 = 1;
        NSLog(@"selected:Tax2");
        [TaxBtn2 setImage:checkImg forState:UIControlStateNormal];
    }
    else {
        TaxEnable2 = 0;
        NSLog(@"unselected:Tax2");
        [TaxBtn2 setImage:uncheckImg forState:UIControlStateNormal]; 
    }
}

//Education Page -----------------------------------------------------------------------------------
- (IBAction)EducationBtn1Pressed:(id)sender{
    UIImage *checkImg = [UIImage imageNamed:@"check_box.png"];
    UIImage *uncheckImg = [UIImage imageNamed:@"uncheck_box.png"];
    if (EducationEnable1 == 0) {
        EducationEnable1 = 1;
        NSLog(@"selected:Education1");
        [EducationBtn1 setImage:checkImg forState:UIControlStateNormal];
    }
    else {
        EducationEnable1 = 0;
        NSLog(@"unselected:Education1");
        [EducationBtn1 setImage:uncheckImg forState:UIControlStateNormal]; 
    }
}

- (IBAction)EducationBtn2Pressed:(id)sender{
    UIImage *checkImg = [UIImage imageNamed:@"check_box.png"];
    UIImage *uncheckImg = [UIImage imageNamed:@"uncheck_box.png"];
    if (EducationEnable2 == 0) {
        EducationEnable2 = 1;
        NSLog(@"selected:Education2");
        [EducationBtn2 setImage:checkImg forState:UIControlStateNormal];
    }
    else {
        EducationEnable2 = 0;
        NSLog(@"unselected:Education2");
        [EducationBtn2 setImage:uncheckImg forState:UIControlStateNormal]; 
    }
}

//Assurance Page -----------------------------------------------------------------------------------
- (IBAction)AssuranceBtn1Pressed:(id)sender{
    UIImage *checkImg = [UIImage imageNamed:@"check_box.png"];
    UIImage *uncheckImg = [UIImage imageNamed:@"uncheck_box.png"];
    if (AssuranceEnable1 == 0) {
        AssuranceEnable1 = 1;
        NSLog(@"selected:Assurance1");
        [AssuranceBtn1 setImage:checkImg forState:UIControlStateNormal];
    }
    else {
        AssuranceEnable1 = 0;
        NSLog(@"unselected:Assurance1");
        [AssuranceBtn1 setImage:uncheckImg forState:UIControlStateNormal]; 
    }
}

- (IBAction)AssuranceBtn2Pressed:(id)sender{
    UIImage *checkImg = [UIImage imageNamed:@"check_box.png"];
    UIImage *uncheckImg = [UIImage imageNamed:@"uncheck_box.png"];
    if (AssuranceEnable2 == 0) {
        AssuranceEnable2 = 1;
        NSLog(@"selected:Assurance2");
        [AssuranceBtn2 setImage:checkImg forState:UIControlStateNormal];
    }
    else {
        AssuranceEnable2 = 0;
        NSLog(@"unselected:Assurance2");
        [AssuranceBtn2 setImage:uncheckImg forState:UIControlStateNormal]; 
    }
}

//Saving Page -----------------------------------------------------------------------------------
- (IBAction)SavingBtn1Pressed:(id)sender{
    UIImage *checkImg = [UIImage imageNamed:@"check_box.png"];
    UIImage *uncheckImg = [UIImage imageNamed:@"uncheck_box.png"];
    if (SavingEnable1 == 0) {
        SavingEnable1 = 1;
        NSLog(@"selected:Saving1");
        [SavingBtn1 setImage:checkImg forState:UIControlStateNormal];
    }
    else {
        SavingEnable1 = 0;
        NSLog(@"unselected:Saving1");
        [SavingBtn1 setImage:uncheckImg forState:UIControlStateNormal]; 
    }
}

- (IBAction)SavingBtn2Pressed:(id)sender{
    UIImage *checkImg = [UIImage imageNamed:@"check_box.png"];
    UIImage *uncheckImg = [UIImage imageNamed:@"uncheck_box.png"];
    if (SavingEnable2 == 0) {
        SavingEnable2 = 1;
        NSLog(@"selected:Saving2");
        [SavingBtn2 setImage:checkImg forState:UIControlStateNormal];
    }
    else {
        SavingEnable2 = 0;
        NSLog(@"unselected:Saving2");
        [SavingBtn2 setImage:uncheckImg forState:UIControlStateNormal]; 
    }
}

//set page enable -----------------------------------------------------------------------------------
//set retire page enable//
- (void)setRetirePageEnable{
    if (RetireEnable1 == 1 || RetireEnable2 ==1){
        RetirePageEnable = 1;
        NSLog(@"retire page enabled");
    }
    else{
        RetirePageEnable = 0;
    NSLog(@"retire page disabled");
    }
}

//set tax page enable//
- (void)setTaxPageEnable{
    if (TaxEnable1 == 1 || TaxEnable2 ==1){
        TaxPageEnable = 1;
        NSLog(@"tax page enabled");
    }
    else{
        TaxPageEnable = 0;
    NSLog(@"tax page disabled");
    }
}

//set education page enable//
- (void)setEducationPageEnable{
    if (EducationEnable1 == 1 || EducationEnable2 ==1){
        EducationPageEnable = 1;
        NSLog(@"education page enabled");
    }
    else{
        EducationPageEnable = 0;
    NSLog(@"education page disabled");
    }
}

//set assurance page enable//
- (void)setAssurancePageEnable{
    if (AssuranceEnable1 == 1 || AssuranceEnable2 ==1){
        AssurancePageEnable = 1;
        NSLog(@"assurance page enabled");
    }
    else{
        AssurancePageEnable = 0;
    NSLog(@"assurance page disabled");
    }
}

//set saving page enable//
- (void)setSavingPageEnable{
    if (SavingEnable1 == 1 || SavingEnable2 ==1){
        SavingPageEnable = 1;
        NSLog(@"saving page enabled");
    }
    else{
        SavingPageEnable = 0;
    NSLog(@"saving page disabled");
    }
}

- (IBAction)nextBtnPressed:(id)sender{
    [self setRetirePageEnable];
    [self setTaxPageEnable];
    [self setEducationPageEnable];
    [self setAssurancePageEnable];
    [self setSavingPageEnable];
    Delegate = (MuangthaiAppDelegate *)[UIApplication sharedApplication].delegate;
    [Delegate getRetirePageEnable:RetirePageEnable getTaxPageEnable:TaxPageEnable getEducationPageEnable:EducationPageEnable getAssurancePageEnable:AssurancePageEnable getSavingPageEnable:SavingPageEnable];
    needsViewController = [[NeedsViewController alloc]initWithNibName:@"NeedsViewController" bundle:nil];
    [self.navigationController pushViewController:needsViewController animated:YES];
    [needsViewController release];
    
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
