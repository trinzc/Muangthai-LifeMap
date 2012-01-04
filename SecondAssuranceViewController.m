//
//  SecondAssuranceViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/21/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "SecondAssuranceViewController.h"

@implementation SecondAssuranceViewController

@synthesize DepositAssuranceSlider,DepositAssuranceLabel,DepositAssuranceImg,DepositAssuranceIncreaseBtn,DepositAssurancerDecreaseBtn,DepositAssurance,DepositAssuranceResult;
@synthesize PropertyAssuranceSlider,PropertyAssuranceLabel,PropertyAssuranceImg,PropertyAssuranceDecreaseBtn,PropertyAssuranceIncreaseBtn,PropertyAssurance,PropertyAssuranceResult;

@synthesize ResultLabel;

@synthesize CostOfSpendPerYear,CostOfPublicUtility,CostOfInstallment,CostOfOther;

@synthesize backBtn,nextBtn;

- (id)getCostOfSpendPerYear:(int)getterCostOfSpendPerYear getCostOfPublicUtility:(int)getterCostOfPublicUtility getCostOfInstallment:(int)getterCostOfInstallment getCostOfOther:(int)getterCostOfOther{
    self.CostOfSpendPerYear = getterCostOfSpendPerYear;
    self.CostOfPublicUtility = getterCostOfPublicUtility;
    self.CostOfInstallment = getterCostOfInstallment;
    self.CostOfOther = getterCostOfOther;
    return self;
}

- (void)setResultLabel{
    int YearProtectSpend = 10;
    double resultCal1 = (CostOfSpendPerYear+CostOfPublicUtility+CostOfInstallment+CostOfOther)*YearProtectSpend;
    NSLog(@"%.0f",resultCal1);
    double resultCal2 = DepositAssurance+PropertyAssurance;
    double AllResult = resultCal2-resultCal1;
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: AllResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    ResultLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
}

//Deposit in Bank of Assurance ----------------------------------------------------------------------
- (void)setDepositAssuranceValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: DepositAssuranceResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    DepositAssuranceLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    [self setResultLabel];
    
    UIImage *deposit_1 = [UIImage imageNamed:@"deposit_1.png"];
    UIImage *deposit_2 = [UIImage imageNamed:@"deposit_2.png"];
    UIImage *deposit_3 = [UIImage imageNamed:@"deposit_3.png"];
    UIImage *deposit_4 = [UIImage imageNamed:@"deposit_4.png"];
    if (DepositAssuranceResult == 0){
        [DepositAssuranceImg setImage:NULL];
    }
    else {
        if (DepositAssuranceResult <= 400000){
            [DepositAssuranceImg setImage:deposit_1];
        }
        else {
            if (DepositAssuranceResult <= 800000){
                [DepositAssuranceImg setImage:deposit_2];
            } 
            else {
                if (DepositAssuranceResult <= 1200000){
                    [DepositAssuranceImg setImage:deposit_3];
                }
                else {
                    [DepositAssuranceImg setImage:deposit_4];
                }
            }
        }
    }
}

- (IBAction)DepositAssuranceChange:(id)sender{
    DepositAssuranceSlider.minimumValue = 0;
    DepositAssuranceSlider.maximumValue = 15;
    DepositAssuranceSlider = (UISlider *)sender;
    int DepositAssuranceInt =(int)(DepositAssuranceSlider.value + 0.5f);
    DepositAssuranceResult = DepositAssuranceInt*100000;
    DepositAssurance = DepositAssuranceResult;
    [self setDepositAssuranceValue];
}

- (IBAction)DepositAssuranceDecrease:(id)sender{
    DepositAssuranceSlider.minimumValue = 0;
    DepositAssuranceSlider.maximumValue = 15;
    [DepositAssuranceSlider setValue:DepositAssuranceSlider.value-1 animated:YES];
    int DepositAssuranceInt =(int)(DepositAssuranceSlider.value + 0.5f);
    DepositAssuranceResult = DepositAssuranceInt*100000;
    DepositAssurance = DepositAssuranceResult;
    [self setDepositAssuranceValue];
}

- (IBAction)DepositAssuranceIncrease:(id)sender{
    DepositAssuranceSlider.minimumValue = 0;
    DepositAssuranceSlider.maximumValue = 15;
    [DepositAssuranceSlider setValue:DepositAssuranceSlider.value+1 animated:YES];
    int DepositAssuranceInt =(int)(DepositAssuranceSlider.value + 0.5f);
    DepositAssuranceResult = DepositAssuranceInt*100000;
    DepositAssurance = DepositAssuranceResult;
    [self setDepositAssuranceValue];
}

//Property Assurance --------------------------------------------------------------------------------
- (void)setPropertyAssuranceValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: PropertyAssuranceResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    PropertyAssuranceLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    [self setResultLabel];
    
    UIImage *investment_1 = [UIImage imageNamed:@"investment_1.png"];
    UIImage *investment_2 = [UIImage imageNamed:@"investment_2.png"];
    UIImage *investment_3 = [UIImage imageNamed:@"investment_3.png"];
    UIImage *investment_4 = [UIImage imageNamed:@"investment_4.png"];
    if (PropertyAssuranceResult == 0){
        [PropertyAssuranceImg setImage:NULL];
    }
    else {
        if (PropertyAssuranceResult <= 400000){
            [PropertyAssuranceImg setImage:investment_1];
        }
        else {
            if (PropertyAssuranceResult <= 800000){
                [PropertyAssuranceImg setImage:investment_2];
            } 
            else {
                if (PropertyAssuranceResult <= 1200000){
                    [PropertyAssuranceImg setImage:investment_3];
                }
                else {
                    [PropertyAssuranceImg setImage:investment_4];
                }
            }
        }
    }
}

- (IBAction)PropertyAssuranceChange:(id)sender{
    PropertyAssuranceSlider.minimumValue = 0;
    PropertyAssuranceSlider.maximumValue = 15;
    PropertyAssuranceSlider = (UISlider *)sender;
    int PropertyAssuranceInt =(int)(PropertyAssuranceSlider.value + 0.5f);
    PropertyAssuranceResult = PropertyAssuranceInt*100000;
    PropertyAssurance = PropertyAssuranceResult;
    [self setPropertyAssuranceValue];
}

- (IBAction)PropertyAssuranceDecrease:(id)sender{
    PropertyAssuranceSlider.minimumValue = 0;
    PropertyAssuranceSlider.maximumValue = 15;
    [PropertyAssuranceSlider setValue:PropertyAssuranceSlider.value-1 animated:YES];
    int PropertyAssuranceInt =(int)(PropertyAssuranceSlider.value + 0.5f);
    PropertyAssuranceResult = PropertyAssuranceInt*100000;
    PropertyAssurance = PropertyAssuranceResult;
    [self setPropertyAssuranceValue];
}

- (IBAction)PropertyAssuranceIncrease:(id)sender{
    PropertyAssuranceSlider.minimumValue = 0;
    PropertyAssuranceSlider.maximumValue = 15;
    [PropertyAssuranceSlider setValue:PropertyAssuranceSlider.value+1 animated:YES];
    int PropertyAssuranceInt =(int)(PropertyAssuranceSlider.value + 0.5f);
    PropertyAssuranceResult = PropertyAssuranceInt*100000;
    PropertyAssurance = PropertyAssuranceResult;
    [self setPropertyAssuranceValue];
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)nextBtnPressed:(id)sender{
    
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
    UIImage *sliderBackground = [UIImage imageNamed: @"seekbar_slide.png"];
    UIImage *center = [UIImage imageNamed: @"seekbar_button.png"];
    
    DepositAssuranceSlider.backgroundColor = [UIColor clearColor];
    [DepositAssuranceSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [DepositAssuranceSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [DepositAssuranceSlider setThumbImage: center forState: UIControlStateNormal];
    [DepositAssuranceSlider release];
    
    PropertyAssuranceSlider.backgroundColor = [UIColor clearColor];
    [PropertyAssuranceSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [PropertyAssuranceSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [PropertyAssuranceSlider setThumbImage: center forState: UIControlStateNormal];
    [PropertyAssuranceSlider release];
    
    [DepositAssuranceLabel setText:@"0 บาท"];
    [PropertyAssuranceLabel setText:@"0 บาท"];

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
