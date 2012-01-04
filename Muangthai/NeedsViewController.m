//
//  NeedsViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/22/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "NeedsViewController.h"

@implementation NeedsViewController

@synthesize Delegate,checklistViewController,firstRetirementViewController,firstTaxViewController,firstEducationViewController,firstAssuranceViewController,firstSavingViewController,summaryViewController;
@synthesize RetireBtn,TaxBtn,EducationBtn,AssuranceBtn,SavingBtn;
@synthesize nextBtn,backBtn;

- (void)setNeedsEnable{
    Delegate = (MuangthaiAppDelegate *)[UIApplication sharedApplication].delegate;
    [self setRetireBtnEnable];
    [self setTaxBtnEnable];
    [self setEducationBtnEnable];
    [self setAssuranceBtnEnable];
    [self setSavingBtnEnable];
}

- (void)setRetireBtnEnable{
    UIImage *RetireBtnDisable = [UIImage imageNamed:@"button_retire_1.png"];
    UIImage *RetireBtnDone = [UIImage imageNamed:@"button_retire_2.png"];
    UIImage *RetireBtnEnable = [UIImage imageNamed:@"button_retire_3.png"];

    if (Delegate.RetirePageEnable == 0){
        RetireBtn.enabled = YES;
        [RetireBtn setImage:RetireBtnEnable forState:UIControlStateNormal];
    }
    else if (Delegate.RetirePageEnable == 1){
        RetireBtn.enabled = NO;
        [RetireBtn setImage:RetireBtnDisable forState:UIControlStateNormal];
    }
    else{
        RetireBtn.enabled = NO;
        [RetireBtn setImage:RetireBtnDone forState:UIControlStateNormal];
    }
}

- (void)setTaxBtnEnable{
    UIImage *TaxBtnDisable = [UIImage imageNamed:@"button_tax_1.png"];
    UIImage *TaxBtnDone = [UIImage imageNamed:@"button_tax_2.png"];
    UIImage *TaxBtnEnable = [UIImage imageNamed:@"button_tax_3.png"];
    
    if (Delegate.TaxPageEnable == 0){
        TaxBtn.enabled = YES;
        [TaxBtn setImage:TaxBtnEnable forState:UIControlStateNormal];
    }
    else if (Delegate.TaxPageEnable == 1){
        TaxBtn.enabled = NO;
        [TaxBtn setImage:TaxBtnDisable forState:UIControlStateNormal];
    }
    else{
        TaxBtn.enabled = NO;
        [TaxBtn setImage:TaxBtnDone forState:UIControlStateNormal];
    }
}

- (void)setEducationBtnEnable{
    UIImage *EducationBtnDisable = [UIImage imageNamed:@"button_study_1.png"];
    UIImage *EducationBtnDone = [UIImage imageNamed:@"button_study_2.png"];
    UIImage *EducationBtnEnable = [UIImage imageNamed:@"button_study_3.png"];
    
    if (Delegate.EducationPageEnable == 0){
        EducationBtn.enabled = YES;
        [EducationBtn setImage:EducationBtnEnable forState:UIControlStateNormal];
    }
    else if (Delegate.EducationPageEnable == 1){
        EducationBtn.enabled = NO;
        [EducationBtn setImage:EducationBtnDisable forState:UIControlStateNormal];
    }
    else{
        EducationBtn.enabled = NO;
        [EducationBtn setImage:EducationBtnDone forState:UIControlStateNormal];
    }
}

- (void)setAssuranceBtnEnable{
    UIImage *AssuranceBtnDisable = [UIImage imageNamed:@"button_assurance_1.png"];
    UIImage *AssuranceBtnDone = [UIImage imageNamed:@"button_assurance_2.png"];
    UIImage *AssuranceBtnEnable = [UIImage imageNamed:@"button_assurance_3.png"];
    
    if (Delegate.AssurancePageEnable == 0){
        AssuranceBtn.enabled = YES;
        [AssuranceBtn setImage:AssuranceBtnEnable forState:UIControlStateNormal];
    }
    else if (Delegate.AssurancePageEnable == 1){
        AssuranceBtn.enabled = NO;
        [AssuranceBtn setImage:AssuranceBtnDisable forState:UIControlStateNormal];
    }
    else{
        AssuranceBtn.enabled = NO;
        [AssuranceBtn setImage:AssuranceBtnDone forState:UIControlStateNormal];
    }
}

- (void)setSavingBtnEnable{
    UIImage *SavingBtnDisable = [UIImage imageNamed:@"button_saving_1.png"];
    UIImage *SavingBtnDone = [UIImage imageNamed:@"button_saving_2.png"];
    UIImage *SavingBtnEnable = [UIImage imageNamed:@"button_saving_3.png"];
    
    if (Delegate.SavingPageEnable == 0){
        SavingBtn.enabled = YES;
        [SavingBtn setImage:SavingBtnEnable forState:UIControlStateNormal];
    }
    else if (Delegate.SavingPageEnable == 1){
        SavingBtn.enabled = NO;
        [SavingBtn setImage:SavingBtnDisable forState:UIControlStateNormal];
    }
    else{
        SavingBtn.enabled = NO;
        [SavingBtn setImage:SavingBtnDone forState:UIControlStateNormal];
    }
}

- (IBAction)RetireBtnPressed:(id)sender{
    firstRetirementViewController = [[FirstRetirementViewController alloc]initWithNibName:@"FirstRetirementViewController" bundle:nil];
    [self.navigationController pushViewController:firstRetirementViewController animated:YES];
    [firstRetirementViewController release];
}

- (IBAction)TaxBtnPressed:(id)sender{
    firstTaxViewController = [[FirstTaxViewController alloc]initWithNibName:@"FirstTaxViewController" bundle:nil];
    [self.navigationController pushViewController:firstTaxViewController animated:YES];
    [firstTaxViewController release];
}

- (IBAction)EducationBtnPressed:(id)sender{
    firstEducationViewController = [[FirstEducationViewController alloc]initWithNibName:@"FirstEducationViewController" bundle:nil];
    [self.navigationController pushViewController:firstEducationViewController animated:YES];
    [firstEducationViewController release];
}

- (IBAction)AssuranceBtnPressed:(id)sender{
    firstAssuranceViewController = [[FirstAssuranceViewController alloc]initWithNibName:@"FirstAssuranceViewController" bundle:nil];
    [self.navigationController pushViewController:firstAssuranceViewController animated:YES];
    [firstAssuranceViewController release];
}

- (IBAction)SavingBtnPressed:(id)sender{
    firstSavingViewController = [[FirstSavingViewController alloc]initWithNibName:@"FirstSavingViewController" bundle:nil];
    [self.navigationController pushViewController:firstSavingViewController animated:YES];
    [firstSavingViewController release];
}

- (IBAction)nextBtnPressed:(id)sender{
    summaryViewController = [[SummaryViewController alloc]initWithNibName:@"SummaryViewController" bundle:nil];
    [self.navigationController pushViewController:summaryViewController animated:YES];
    [summaryViewController release];
}

- (IBAction)backBtnPressed:(id)sender{
    checklistViewController = [[ChecklistViewController alloc]initWithNibName:@"ChecklistViewController" bundle:nil];
    summaryViewController = [[SummaryViewController alloc]initWithNibName:@"SummaryViewController" bundle:nil];
    [self.navigationController pushViewController:checklistViewController animated:NO];
    [self.navigationController pushViewController:summaryViewController animated:NO];
    [self.navigationController popViewControllerAnimated:YES];
    
    [checklistViewController release];
    [summaryViewController release];
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
    [self setNeedsEnable];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    self.RetireBtn = nil;
    self.TaxBtn = nil;
    self.EducationBtn = nil;
    self.AssuranceBtn = nil;
    self.SavingBtn = nil;
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc{
    [RetireBtn release];
    [TaxBtn release];
    [EducationBtn release];
    [AssuranceBtn release];
    [SavingBtn release];
    [super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
