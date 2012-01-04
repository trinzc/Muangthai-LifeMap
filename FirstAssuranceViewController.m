//
//  FirstAssuranceViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/20/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "FirstAssuranceViewController.h"

@implementation FirstAssuranceViewController

@synthesize secondAssuranceViewController;

@synthesize CostOfSpendPerYearSlider,CostOfSpendPerYearLabel,CostOfSpendPerYearImg,CostOfSpendPerYearDecreaseBtn,CostOfSpendPerYearIncreaseBtn,CostOfSpendPerYear,CostOfSpendPerYearResult;
@synthesize CostOfPublicUtilitySlider,CostOfPublicUtilityLabel,CostOfPublicUtilityImg,CostOfPublicUtilityDecreaseBtn,CostOfPublicUtilityIncreaseBtn,CostOfPublicUtility,CostOfPublicUtilityResult;
@synthesize CostOfInstallmentSlider,CostOfInstallmentLabel,CostOfInstallmentImg,CostOfInstallmentDecreaseBtn,CostOfInstallmentIncreaseBtn,CostOfInstallment,CostOfInstallmentResult;
@synthesize CostOfOtherSlider,CostOfOtherLabel,CostOfOtherImg,CostOfOtherDecreaseBtn,CostOfOtherIncreaseBtn,CostOfOther,CostOfOtherResult;

@synthesize nextBtn,backBtn;

//Cost of Spend per Year ----------------------------------------------------------------------------
- (void)setCostOfSpendPerYearValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: CostOfSpendPerYearResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    CostOfSpendPerYearLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    UIImage *costSpend_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *costSpend_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *costSpend_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *costSpend_4 = [UIImage imageNamed:@"income_4.png"];
    if (CostOfSpendPerYearResult == 0){
        [CostOfSpendPerYearImg setImage:NULL];
    }
    else {
        if (CostOfSpendPerYearResult <= 100000){
            [CostOfSpendPerYearImg setImage:costSpend_1];
        }
        else {
            if (CostOfSpendPerYearResult <= 250000){
                [CostOfSpendPerYearImg setImage:costSpend_2];
            } 
            else {
                if (CostOfSpendPerYearResult <= 400000){
                    [CostOfSpendPerYearImg setImage:costSpend_3];
                }
                else {
                    [CostOfSpendPerYearImg setImage:costSpend_4];
                }
            }
        }
    }
}

- (IBAction)CostOfSpendPerYearChange:(id)sender{
    CostOfSpendPerYearSlider.minimumValue = 0;
    CostOfSpendPerYearSlider.maximumValue = 150;
    CostOfSpendPerYearSlider = (UISlider *)sender;
    int CostOfSpendPerYearInt =(int)(CostOfSpendPerYearSlider.value + 0.5f);
    CostOfSpendPerYearResult = CostOfSpendPerYearInt*10000;
    CostOfSpendPerYear = CostOfSpendPerYearResult;
    [self setCostOfSpendPerYearValue];
}

- (IBAction)CostOfSpendPerYearDecrease:(id)sender{
    CostOfSpendPerYearSlider.minimumValue = 0;
    CostOfSpendPerYearSlider.maximumValue = 150;
    [CostOfSpendPerYearSlider setValue:CostOfSpendPerYearSlider.value-1 animated:YES];
    int CostOfSpendPerYearInt =(int)(CostOfSpendPerYearSlider.value + 0.5f);
    CostOfSpendPerYearResult = CostOfSpendPerYearInt*10000;
    CostOfSpendPerYear = CostOfSpendPerYearResult;
    [self setCostOfSpendPerYearValue];
}

- (IBAction)CostOfSpendPerYearIncrease:(id)sender{
    CostOfSpendPerYearSlider.minimumValue = 0;
    CostOfSpendPerYearSlider.maximumValue = 150;
    [CostOfSpendPerYearSlider setValue:CostOfSpendPerYearSlider.value+1 animated:YES];
    int CostOfSpendPerYearInt =(int)(CostOfSpendPerYearSlider.value + 0.5f);
    CostOfSpendPerYearResult = CostOfSpendPerYearInt*10000;
    CostOfSpendPerYear = CostOfSpendPerYearResult;
    [self setCostOfSpendPerYearValue];
}

//Cost of Public Utility ----------------------------------------------------------------------------
- (void)setCostOfPublicUtilityValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: CostOfPublicUtilityResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    CostOfPublicUtilityLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    UIImage *costSpend_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *costSpend_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *costSpend_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *costSpend_4 = [UIImage imageNamed:@"income_4.png"];
    if (CostOfPublicUtilityResult == 0){
        [CostOfPublicUtilityImg setImage:NULL];
    }
    else {
        if (CostOfPublicUtilityResult <= 100000){
            [CostOfPublicUtilityImg setImage:costSpend_1];
        }
        else {
            if (CostOfPublicUtilityResult <= 250000){
                [CostOfPublicUtilityImg setImage:costSpend_2];
            } 
            else {
                if (CostOfPublicUtilityResult <= 400000){
                    [CostOfPublicUtilityImg setImage:costSpend_3];
                }
                else {
                    [CostOfPublicUtilityImg setImage:costSpend_4];
                }
            }
        }
    }
}

- (IBAction)CostOfPublicUtilityChange:(id)sender{
    CostOfPublicUtilitySlider.minimumValue = 0;
    CostOfPublicUtilitySlider.maximumValue = 150;
    CostOfPublicUtilitySlider = (UISlider *)sender;
    int CostOfPublicUtilityInt =(int)(CostOfPublicUtilitySlider.value + 0.5f);
    CostOfPublicUtilityResult = CostOfPublicUtilityInt*10000;
    CostOfPublicUtility = CostOfPublicUtilityResult;
    [self setCostOfPublicUtilityValue];
}

- (IBAction)CostOfPublicUtilityDecrease:(id)sender{
    CostOfPublicUtilitySlider.minimumValue = 0;
    CostOfPublicUtilitySlider.maximumValue = 150;
    [CostOfPublicUtilitySlider setValue:CostOfPublicUtilitySlider.value-1 animated:YES];
    int CostOfPublicUtilityInt =(int)(CostOfPublicUtilitySlider.value + 0.5f);
    CostOfPublicUtilityResult = CostOfPublicUtilityInt*10000;
    CostOfPublicUtility = CostOfPublicUtilityResult;
    [self setCostOfPublicUtilityValue];
}

- (IBAction)CostOfPublicUtilityIncrease:(id)sender{
    CostOfPublicUtilitySlider.minimumValue = 0;
    CostOfPublicUtilitySlider.maximumValue = 150;
    [CostOfPublicUtilitySlider setValue:CostOfPublicUtilitySlider.value+1 animated:YES];
    int CostOfPublicUtilityInt =(int)(CostOfPublicUtilitySlider.value + 0.5f);
    CostOfPublicUtilityResult = CostOfPublicUtilityInt*10000;
    CostOfPublicUtility = CostOfPublicUtilityResult;
    [self setCostOfPublicUtilityValue];
}

//Cost of Installment ----------------------------------------------------------------------------
- (void)setCostOfInstallmentValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: CostOfInstallmentResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    CostOfInstallmentLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    UIImage *costSpend_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *costSpend_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *costSpend_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *costSpend_4 = [UIImage imageNamed:@"income_4.png"];
    if (CostOfInstallmentResult == 0){
        [CostOfInstallmentImg setImage:NULL];
    }
    else {
        if (CostOfInstallmentResult <= 100000){
            [CostOfInstallmentImg setImage:costSpend_1];
        }
        else {
            if (CostOfInstallmentResult <= 250000){
                [CostOfInstallmentImg setImage:costSpend_2];
            } 
            else {
                if (CostOfInstallmentResult <= 400000){
                    [CostOfInstallmentImg setImage:costSpend_3];
                }
                else {
                    [CostOfInstallmentImg setImage:costSpend_4];
                }
            }
        }
    }
}

- (IBAction)CostOfInstallmentChange:(id)sender{
    CostOfInstallmentSlider.minimumValue = 0;
    CostOfInstallmentSlider.maximumValue = 150;
    CostOfInstallmentSlider = (UISlider *)sender;
    int CostOfInstallmentInt =(int)(CostOfInstallmentSlider.value + 0.5f);
    CostOfInstallmentResult = CostOfInstallmentInt*10000;
    CostOfInstallment = CostOfInstallmentResult;
    [self setCostOfInstallmentValue];
}

- (IBAction)CostOfInstallmentDecrease:(id)sender{
    CostOfInstallmentSlider.minimumValue = 0;
    CostOfInstallmentSlider.maximumValue = 150;
    [CostOfInstallmentSlider setValue:CostOfInstallmentSlider.value-1 animated:YES];
    int CostOfInstallmentInt =(int)(CostOfInstallmentSlider.value + 0.5f);
    CostOfInstallmentResult = CostOfInstallmentInt*10000;
    CostOfInstallment = CostOfInstallmentResult;
    [self setCostOfInstallmentValue];
}

- (IBAction)CostOfInstallmentIncrease:(id)sender{
    CostOfInstallmentSlider.minimumValue = 0;
    CostOfInstallmentSlider.maximumValue = 150;
    [CostOfInstallmentSlider setValue:CostOfInstallmentSlider.value+1 animated:YES];
    int CostOfInstallmentInt =(int)(CostOfInstallmentSlider.value + 0.5f);
    CostOfInstallmentResult = CostOfInstallmentInt*10000;
    CostOfInstallment = CostOfInstallmentResult;
    [self setCostOfInstallmentValue];
}

//Cost of Other ----------------------------------------------------------------------------------
- (void)setCostOfOtherValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: CostOfOtherResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    CostOfOtherLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    UIImage *costSpend_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *costSpend_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *costSpend_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *costSpend_4 = [UIImage imageNamed:@"income_4.png"];
    if (CostOfOtherResult == 0){
        [CostOfOtherImg setImage:NULL];
    }
    else {
        if (CostOfOtherResult <= 100000){
            [CostOfOtherImg setImage:costSpend_1];
        }
        else {
            if (CostOfOtherResult <= 250000){
                [CostOfOtherImg setImage:costSpend_2];
            } 
            else {
                if (CostOfOtherResult <= 400000){
                    [CostOfOtherImg setImage:costSpend_3];
                }
                else {
                    [CostOfOtherImg setImage:costSpend_4];
                }
            }
        }
    }
}

- (IBAction)CostOfOtherChange:(id)sender{
    CostOfOtherSlider.minimumValue = 0;
    CostOfOtherSlider.maximumValue = 150;
    CostOfOtherSlider = (UISlider *)sender;
    int CostOfOtherInt =(int)(CostOfOtherSlider.value + 0.5f);
    CostOfOtherResult = CostOfOtherInt*10000;
    CostOfOther = CostOfOtherResult;
    [self setCostOfOtherValue];
}

- (IBAction)CostOfOtherDecrease:(id)sender{
    CostOfOtherSlider.minimumValue = 0;
    CostOfOtherSlider.maximumValue = 150;
    [CostOfOtherSlider setValue:CostOfOtherSlider.value-1 animated:YES];
    int CostOfOtherInt =(int)(CostOfOtherSlider.value + 0.5f);
    CostOfOtherResult = CostOfOtherInt*10000;
    CostOfOther = CostOfOtherResult;
    [self setCostOfOtherValue];
}
- (IBAction)CostOfOtherIncrease:(id)sender{
    CostOfOtherSlider.minimumValue = 0;
    CostOfOtherSlider.maximumValue = 150;
    [CostOfOtherSlider setValue:CostOfOtherSlider.value+1 animated:YES];
    int CostOfOtherInt =(int)(CostOfOtherSlider.value + 0.5f);
    CostOfOtherResult = CostOfOtherInt*10000;
    CostOfOther = CostOfOtherResult;
    [self setCostOfOtherValue];
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)backBtnPressed:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)nextBtnPressed:(id)sender{
    secondAssuranceViewController = [[SecondAssuranceViewController alloc]initWithNibName:@"SecondAssuranceViewController" bundle:nil];
    [secondAssuranceViewController getCostOfSpendPerYear:CostOfSpendPerYear getCostOfPublicUtility:CostOfPublicUtility getCostOfInstallment:CostOfInstallment getCostOfOther:CostOfOther];
    [self.navigationController pushViewController:secondAssuranceViewController animated:YES];
    [secondAssuranceViewController release];
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
    //UIImage *sliderHilighted = [UIImage imageNamed: @"min.png"];
    UIImage *sliderBackground = [UIImage imageNamed: @"seekbar_slide.png"];
    UIImage *center = [UIImage imageNamed: @"seekbar_button.png"];
    
    CostOfSpendPerYearSlider.backgroundColor = [UIColor clearColor];
    [CostOfSpendPerYearSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [CostOfSpendPerYearSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [CostOfSpendPerYearSlider setThumbImage: center forState: UIControlStateNormal];
    [CostOfSpendPerYearSlider release];
    
    CostOfPublicUtilitySlider.backgroundColor = [UIColor clearColor];
    [CostOfPublicUtilitySlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [CostOfPublicUtilitySlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [CostOfPublicUtilitySlider setThumbImage: center forState: UIControlStateNormal];
    [CostOfPublicUtilitySlider release];
    
    CostOfInstallmentSlider.backgroundColor = [UIColor clearColor];
    [CostOfInstallmentSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [CostOfInstallmentSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [CostOfInstallmentSlider setThumbImage: center forState: UIControlStateNormal];
    [CostOfInstallmentSlider release];
    
    CostOfOtherSlider.backgroundColor = [UIColor clearColor];
    [CostOfOtherSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [CostOfOtherSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [CostOfOtherSlider setThumbImage: center forState: UIControlStateNormal];
    [CostOfOtherSlider release];
    
    [CostOfSpendPerYearLabel setText:[NSString stringWithFormat:@"0 บาท"]];
    [CostOfPublicUtilityLabel setText:[NSString stringWithFormat:@"0 บาท"]];
    [CostOfInstallmentLabel setText:[NSString stringWithFormat:@"0 บาท"]];
    [CostOfOtherLabel setText:[NSString stringWithFormat:@"0 บาท"]];
    
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
