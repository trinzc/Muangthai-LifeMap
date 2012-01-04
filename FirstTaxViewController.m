//
//  FirstTaxViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/9/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "FirstTaxViewController.h"

@implementation FirstTaxViewController
@synthesize secondTaxViewController;
@synthesize RevenuePerYearSlider,RevenuePerYearLabel,RevenuePerYearImage,RevenuePerYearDecreaseBtn,RevenuePerYearIncreaseBtn;
@synthesize InsuranceGeneralSlider,InsuranceGeneralLabel,InsuranceGeneralDecreaseBtn,InsuranceGeneralIncreaseBtn;
@synthesize InsurancePensionsSlider,InsurancePensionsLabel,InsurancePensionsImage,InsurancePensionsDecreaseBtn,InsurancePensionsIncreaseBtn;
@synthesize nextBtn,backBtn;
@synthesize RevenuePerYear,RevenuePerYearResult,InsuranceGeneral,InsuranceGeneralResult,InsurancePensions,InsurancePensionsResult;

//Revenue per Year ---------------------------------------------------------------------------------
- (void)setRevenuePerYearValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: RevenuePerYearResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    RevenuePerYearLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    [numFormatter release];
    [result release];
    
    UIImage *income_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *income_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *income_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *income_4 = [UIImage imageNamed:@"income_4.png"];
    if (RevenuePerYearResult <= 1000000){
        [RevenuePerYearImage setImage:income_1];
    }
    else {
        if (RevenuePerYearResult <= 2000000){
            [RevenuePerYearImage setImage:income_2];
        }
        else {
            if (RevenuePerYearResult <= 3000000){
                [RevenuePerYearImage setImage:income_3];
            } 
            else {
                if (RevenuePerYearResult <= 4000000){
                    [RevenuePerYearImage setImage:income_4];
                }
                else {
                    [RevenuePerYearImage setImage:NULL];
                }
            }
        }
    }
}

- (IBAction)RevenuePerYearChange:(id)sender{
    RevenuePerYearSlider.minimumValue = 3;
    RevenuePerYearSlider.maximumValue = 80;
    RevenuePerYearSlider = (UISlider *)sender;
    int RevenuePerYearInt =(int)(RevenuePerYearSlider.value + 0.5f);
    RevenuePerYearResult = RevenuePerYearInt*50000;
    RevenuePerYear = RevenuePerYearResult;
    [self setRevenuePerYearValue];
}

- (IBAction)RevenuePerYearDecrease:(id)sender{
    RevenuePerYearSlider.minimumValue = 3;
    RevenuePerYearSlider.maximumValue = 80;
    [RevenuePerYearSlider setValue:RevenuePerYearSlider.value-1 animated:YES];
    int RevenuePerYearInt =(int)(RevenuePerYearSlider.value + 0.5f);
    RevenuePerYearResult = RevenuePerYearInt*50000;
    RevenuePerYear = RevenuePerYearResult;
    [self setRevenuePerYearValue];
}

- (IBAction)RevenuePerYearIncrease:(id)sender{
    RevenuePerYearSlider.minimumValue = 3;
    RevenuePerYearSlider.maximumValue = 80;
    [RevenuePerYearSlider setValue:RevenuePerYearSlider.value+1 animated:YES];
    int RevenuePerYearInt =(int)(RevenuePerYearSlider.value + 0.5f);
    RevenuePerYearResult = RevenuePerYearInt*50000;
    RevenuePerYear =RevenuePerYearResult;
    [self setRevenuePerYearValue];
}

//General Insurance ---------------------------------------------------------------------------------
- (void)setInsuranceGeneralValue{
    CGPoint InsuranceGeneralLabelPos = CGPointMake(358+(InsuranceGeneralSlider.value*3.1),549);
    [InsuranceGeneralLabel setCenter:InsuranceGeneralLabelPos];
    InsuranceGeneralLabel.text = [NSString stringWithFormat:@"%d%%",InsuranceGeneralResult];
}

- (IBAction)InsuranceGeneralChange:(id)sender{
    int InsuranceGeneralInt =(int)(InsuranceGeneralSlider.value + 0.5f);
    InsuranceGeneralResult = InsuranceGeneralInt;
    InsuranceGeneral = InsuranceGeneralResult;
    [self setInsuranceGeneralValue];
}

- (IBAction)InsuranceGeneralDecrease:(id)sender{
    [InsuranceGeneralSlider setValue:InsuranceGeneralSlider.value-1 animated:YES];
    int InsuranceGeneralInt =(int)(InsuranceGeneralSlider.value + 0.5f);
    InsuranceGeneralResult = InsuranceGeneralInt;
    InsuranceGeneral = InsuranceGeneralResult;
    [self setInsuranceGeneralValue];
}

- (IBAction)InsuranceGeneralIncrease:(id)sender{
    [InsuranceGeneralSlider setValue:InsuranceGeneralSlider.value+1 animated:YES];
    int InsuranceGeneralInt =(int)(InsuranceGeneralSlider.value + 0.5f);
    InsuranceGeneralResult = InsuranceGeneralInt;
    InsuranceGeneral = InsuranceGeneralResult;
    [self setInsuranceGeneralValue];
}

//Pensions Insurance ---------------------------------------------------------------------------------
- (void)setInsurancePensionsValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: InsurancePensionsResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    InsurancePensionsLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    [numFormatter release];
    [result release];
    
    UIImage *income_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *income_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *income_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *income_4 = [UIImage imageNamed:@"income_4.png"];
    if (InsurancePensionsResult == 0){
        [InsurancePensionsImage setImage:NULL];
    }
    else {
        if (InsurancePensionsResult <= 50000){
            [InsurancePensionsImage setImage:income_1];
        }
        else {
            if (InsurancePensionsResult <= 100000){
                [InsurancePensionsImage setImage:income_2];
            } 
            else {
                if (InsurancePensionsResult <= 150000){
                    [InsurancePensionsImage setImage:income_3];
                }
                else {
                    [InsurancePensionsImage setImage:income_4];
                }
            }
        }
    }
}

- (IBAction)InsurancePensionsChange:(id)sender{
    int InsurancePensionsInt =(int)(InsurancePensionsSlider.value + 0.5f);
    InsurancePensionsResult = InsurancePensionsInt*5000;
    InsurancePensions = InsurancePensionsResult;
    [self setInsurancePensionsValue];
}

- (IBAction)InsurancePensionsDecrease:(id)sender{
    [InsurancePensionsSlider setValue:InsurancePensionsSlider.value-1 animated:YES];
    int InsurancePensionsInt =(int)(InsurancePensionsSlider.value + 0.5f);
    InsurancePensionsResult = InsurancePensionsInt*5000;
    InsurancePensions = InsurancePensionsResult;
    [self setInsurancePensionsValue];
}

- (IBAction)InsurancePensionsIncrease:(id)sender{
    [InsurancePensionsSlider setValue:InsurancePensionsSlider.value+1 animated:YES];
    int InsurancePensionsInt =(int)(InsurancePensionsSlider.value + 0.5f);
    InsurancePensionsResult = InsurancePensionsInt*5000;
    InsurancePensions = InsurancePensionsResult;
    [self setInsurancePensionsValue];
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)nextBtnPressed:(id)sender{
    secondTaxViewController = [[SecondTaxViewController alloc]initWithNibName:@"SecondTaxViewController" bundle:nil];
    [secondTaxViewController getRevenuePerYear:RevenuePerYear getInsuranceGeneral:InsuranceGeneral getInsurancePensions:InsurancePensions];
    [self.navigationController pushViewController:secondTaxViewController animated:YES];
    [secondTaxViewController release];
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
    //UIImage *sliderHilighted = [UIImage imageNamed: @"min.png"];
    UIImage *sliderBackground = [UIImage imageNamed: @"seekbar_slide.png"];
    UIImage *center = [UIImage imageNamed: @"seekbar_button.png"];
    
    RevenuePerYearSlider.backgroundColor = [UIColor clearColor];
    [RevenuePerYearSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [RevenuePerYearSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [RevenuePerYearSlider setThumbImage: center forState: UIControlStateNormal];
    [RevenuePerYearSlider release];
    
    InsuranceGeneralSlider.backgroundColor = [UIColor clearColor];
    [InsuranceGeneralSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [InsuranceGeneralSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [InsuranceGeneralSlider setThumbImage: center forState: UIControlStateNormal];
    [InsuranceGeneralSlider release];
    
    InsurancePensionsSlider.backgroundColor = [UIColor clearColor];
    [InsurancePensionsSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [InsurancePensionsSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [InsurancePensionsSlider setThumbImage: center forState: UIControlStateNormal];
    [InsurancePensionsSlider release];
    
    UIImage *income_1 = [UIImage imageNamed:@"income_1.png"];
    [RevenuePerYearLabel setText:[NSString stringWithFormat:@"150,000 บาท"]];
    [InsuranceGeneralLabel setText:[NSString stringWithFormat:@"0%"]];
    [InsurancePensionsLabel setText:[NSString stringWithFormat:@"0 บาท"]];
    [RevenuePerYearImage setImage:income_1];
    RevenuePerYearSlider.value = 3;
    RevenuePerYearSlider.minimumValue = 3;
    RevenuePerYearSlider.maximumValue = 80;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    RevenuePerYearSlider = nil;
    RevenuePerYearLabel = nil;
    RevenuePerYearImage = nil;
    RevenuePerYearIncreaseBtn = nil;
    RevenuePerYearDecreaseBtn = nil;
    
    InsuranceGeneralSlider = nil;
    InsuranceGeneralLabel = nil;
    InsuranceGeneralIncreaseBtn = nil;
    InsuranceGeneralDecreaseBtn = nil;
    
    InsurancePensionsSlider = nil;
    InsurancePensionsLabel = nil;
    InsurancePensionsImage = nil;
    InsurancePensionsIncreaseBtn = nil;
    InsurancePensionsDecreaseBtn = nil;
    
    nextBtn = nil;
    backBtn = nil;
    
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
