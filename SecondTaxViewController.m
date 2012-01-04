//
//  SecondTaxViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/9/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "SecondTaxViewController.h"

@implementation SecondTaxViewController
@synthesize ReserveTypeSlider;
@synthesize MoneyReserveSlider,MoneyReserveImg,MoneyReserveLabel,MoneyReserveIncreaseBtn,MoneyReserveDecreaseBtn;
@synthesize RMFFundSlider,RMFFundImg,RMFFundLabel,RMFFundIncreaseBtn,RMFFundDecreaseBtn;
@synthesize InsuranceGeneralResultLabel,InsurancePensionsResultLabel,BuyMoreInsuranceResultLabel;
@synthesize nextBtn,backBtn;
@synthesize ReserveType,ReserveTypeResult,MoneyReserve,MoneyReserveResult,RMFFund,RMFFundResult;
@synthesize RevenuePerYear,InsuranceGeneral,InsurancePensions;

- (id)getRevenuePerYear:(int)getterRevenuePerYear getInsuranceGeneral:(int)getterInsuranceGeneral getInsurancePensions:(int)getterInsurancePensions{
    self.RevenuePerYear = getterRevenuePerYear;
    self.InsuranceGeneral = getterInsuranceGeneral;
    self.InsurancePensions = getterInsurancePensions;
    return self;
}

- (void)setResultLabel{
    
}

// Reserve Type --------------------------------------------------------------------------------------
- (IBAction)ReserveTypeChange:(id)sender{
    ReserveTypeSlider = (UISlider *)sender;
    ReserveTypeResult =(int)(ReserveTypeSlider.value + 0.5f);
    ReserveType = ReserveTypeResult;
    if (ReserveTypeResult == 1){
        [ReserveTypeSlider setValue:1 animated:YES];
    }
    else if (ReserveTypeResult == 2){
        [ReserveTypeSlider setValue:2 animated:YES];
    }
    else {
        [ReserveTypeSlider setValue:3 animated:YES];
    }
}

//Money Reserve -------------------------------------------------------------------------------------
- (void)setMoneyReserveValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: MoneyReserveResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    MoneyReserveLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    [numFormatter release];
    [result release];
    
    UIImage *income_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *income_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *income_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *income_4 = [UIImage imageNamed:@"income_4.png"];
    if (MoneyReserveResult == 0){
        [MoneyReserveImg setImage:NULL];
    }
    else {
        if (MoneyReserveResult <= 50000){
            [MoneyReserveImg setImage:income_1];
        }
        else {
            if (MoneyReserveResult <= 100000){
                [MoneyReserveImg setImage:income_2];
            } 
            else {
                if (MoneyReserveResult <= 150000){
                    [MoneyReserveImg setImage:income_3];
                }
                else {
                    [MoneyReserveImg setImage:income_4];
                }
            }
        }
    }
}

- (IBAction)MoneyReserveChange:(id)sender{
    MoneyReserveSlider.minimumValue = 0;
    MoneyReserveSlider.maximumValue = 8;
    MoneyReserveSlider = (UISlider *)sender;
    int MoneyReserveInt =(int)(MoneyReserveSlider.value + 0.5f);
    MoneyReserveResult = MoneyReserveInt*25000;
    MoneyReserve = MoneyReserveResult;
    [self setMoneyReserveValue];
}

- (IBAction)MoneyReserveDecrease:(id)sender{
    MoneyReserveSlider.minimumValue = 0;
    MoneyReserveSlider.maximumValue = 8;
    [MoneyReserveSlider setValue:MoneyReserveSlider.value-1 animated:YES];
    int MoneyReserveInt =(int)(MoneyReserveSlider.value + 0.5f);
    MoneyReserveResult = MoneyReserveInt*25000;
    MoneyReserve = MoneyReserveResult;
    [self setMoneyReserveValue];
}

- (IBAction)MoneyReserveIncrease:(id)sender{
    MoneyReserveSlider.minimumValue = 0;
    MoneyReserveSlider.maximumValue = 8;
    [MoneyReserveSlider setValue:MoneyReserveSlider.value+1 animated:YES];
    int MoneyReserveInt =(int)(MoneyReserveSlider.value + 0.5f);
    MoneyReserveResult = MoneyReserveInt*25000;
    MoneyReserve = MoneyReserveResult;
    [self setMoneyReserveValue];
}

//RMF Fund ------------------------------------------------------------------------------------------
- (void)setRMFFundValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: RMFFundResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    RMFFundLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    [numFormatter release];
    [result release];
    UIImage *income_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *income_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *income_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *income_4 = [UIImage imageNamed:@"income_4.png"];
    if (RMFFundResult == 0){
        [RMFFundImg setImage:NULL];
    }
    else {
        if (RMFFundResult <= 100000){
            [RMFFundImg setImage:income_1];
        }
        else {
            if (RMFFundResult <= 250000){
                [RMFFundImg setImage:income_2];
            } 
            else {
                if (RMFFundResult <= 400000){
                    [RMFFundImg setImage:income_3];
                }
                else {
                    [RMFFundImg setImage:income_4];
                }
            }
        }
    }
}

- (IBAction)RMFFundChange:(id)sender{
    RMFFundSlider.minimumValue = 0;
    RMFFundSlider.maximumValue = 20;
    RMFFundSlider = (UISlider *)sender;
    int RMFFundInt =(int)(RMFFundSlider.value + 0.5f);
    RMFFundResult = RMFFundInt*25000;
    RMFFund = RMFFundResult;
    [self setRMFFundValue];
}

- (IBAction)RMFFundDecrease:(id)sender{
    RMFFundSlider.minimumValue = 0;
    RMFFundSlider.maximumValue = 20;
    [RMFFundSlider setValue:RMFFundSlider.value-1 animated:YES];
    int RMFFundInt =(int)(RMFFundSlider.value + 0.5f);
    RMFFundResult = RMFFundInt*25000;
    RMFFund = RMFFundResult;
    [self setRMFFundValue];
}

- (IBAction)RMFFundIncrease:(id)sender{
    RMFFundSlider.minimumValue = 0;
    RMFFundSlider.maximumValue = 20;
    [RMFFundSlider setValue:RMFFundSlider.value+1 animated:YES];
    int RMFFundInt =(int)(RMFFundSlider.value + 0.5f);
    RMFFundResult = RMFFundInt*25000;
    RMFFund = RMFFundResult;
    [self setRMFFundValue];
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)backBtnPressed:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)nextBtnPressed:(id)sender{
    
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
    
    ReserveTypeSlider.backgroundColor = [UIColor clearColor];
    [ReserveTypeSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [ReserveTypeSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [ReserveTypeSlider setThumbImage: center forState: UIControlStateNormal];
    [ReserveTypeSlider release];
    
    MoneyReserveSlider.backgroundColor = [UIColor clearColor];
    [MoneyReserveSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [MoneyReserveSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [MoneyReserveSlider setThumbImage: center forState: UIControlStateNormal];
    [MoneyReserveSlider release];
    
    RMFFundSlider.backgroundColor = [UIColor clearColor];
    [RMFFundSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [RMFFundSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [RMFFundSlider setThumbImage: center forState: UIControlStateNormal];
    [RMFFundSlider release];
    
    [MoneyReserveLabel setText:[NSString stringWithFormat:@"0 บาท"]];
    [RMFFundLabel setText:[NSString stringWithFormat:@"0 บาท"]];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    ReserveTypeSlider = nil;
    
    MoneyReserveSlider = nil;
    MoneyReserveLabel = nil;
    MoneyReserveImg = nil;
    MoneyReserveIncreaseBtn = nil;
    MoneyReserveDecreaseBtn = nil;
    
    RMFFundSlider = nil;
    RMFFundLabel = nil;
    RMFFundImg = nil;
    RMFFundIncreaseBtn = nil;
    RMFFundDecreaseBtn = nil;
    
    InsuranceGeneralResultLabel = nil;
    InsurancePensionsResultLabel = nil;
    BuyMoreInsuranceResultLabel = nil;
    
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
