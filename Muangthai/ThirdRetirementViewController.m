//
//  ThirdRetirementViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 11/24/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "ThirdRetirementViewController.h"

@implementation ThirdRetirementViewController
@synthesize needsViewController,Delegate;
@synthesize expandWorkYearSlider,expandWorkYearLabel,expandWorkYear,expandWorkYearResult,expandWorkDecreaseBtn,expandWorkIncreaseBtn;
@synthesize reduceSpendSlider,reduceSpendLabel,reduceSpend,reduceSpendResult,reduceSpendImg,reduceSpendDecreaseBtn,reduceSpendIncreaseBtn;
@synthesize backBtn,nextBtn;
@synthesize CurrentAge,RetireAge,AgeBeforeRetire,AgeAfterRetire,MoneyUseAfterRetire,NeedMoreMoney,DepositInBankOfRetire,PropertyOfRetire,inflationRate,interestRate;
@synthesize MoreMoneyNeededResultLabel,RetireYearResultLabel;

- (id)getCurrentAge:(double)getterCurrentAge getRetireAge:(double)getterRetireAge getAgeBeforeRetire:(double)getterAgeBeforeRetire getAgeAfterRetire:(double)getterAgeAfterRetire getMoneyUseAfterRetire:(double)getterMoneyUseAfterRetire getNeedMoreMoney:(int)getterNeedMoreMoney getDepositInBankOfRetire:(int)getterDepositInBankOfRetire getPropertyOfRetire:(int)getterPropertyOfRetire getInflationRate:(double)getterInflationRate getInterestRate:(double)getterInterestRate{
    self.CurrentAge = getterCurrentAge;
    self.RetireAge = getterRetireAge;
    self.AgeBeforeRetire = getterAgeBeforeRetire;
    self.AgeAfterRetire = getterAgeAfterRetire;
    self.MoneyUseAfterRetire = getterMoneyUseAfterRetire;
    self.NeedMoreMoney = getterNeedMoreMoney;
    self.DepositInBankOfRetire = getterDepositInBankOfRetire;
    self.PropertyOfRetire = getterPropertyOfRetire;
    self.inflationRate = getterInflationRate;
    self.interestRate = getterInterestRate;
    
    return self;
}

- (void)setResultLabel{
    
    double allMoneyUseAfterRetire = (MoneyUseAfterRetire-(MoneyUseAfterRetire-reduceSpend))*12;
    double newRetireAge = RetireAge+(expandWorkYear-RetireAge);
    double inflationRateUse = inflationRate/100;
    double interestRateUse = interestRate/100;
    double newAgeBeforeRetire = newRetireAge-CurrentAge;
    double allPrepareMoney = DepositInBankOfRetire+PropertyOfRetire;
    
    if (inflationRate == interestRate){
        double result = ((allMoneyUseAfterRetire*(AgeAfterRetire-newRetireAge))/pow((1+interestRateUse),newAgeBeforeRetire));
        NeedMoreMoney = (int)result;
    } 
    else{
        double result = (((allMoneyUseAfterRetire*(1-(pow(((1+inflationRateUse)/(1+interestRateUse)),(AgeAfterRetire-newRetireAge))))/(1-((1+inflationRateUse)/(1+interestRateUse))))/(pow((1+interestRateUse),newAgeBeforeRetire))));
        NeedMoreMoney = (int)result;
    }
    double MoreMoneyNeeded = NeedMoreMoney-allPrepareMoney;
    int MoreMoneyNeededInt = (int)MoreMoneyNeeded;
    
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: MoreMoneyNeededInt];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    MoreMoneyNeededResultLabel.text = [NSString stringWithFormat:@"คุณต้องมีเงิน %@ บาท",[numFormatter stringFromNumber:result]];
    [numFormatter release];
    [result release];
    
    RetireYearResultLabel.text = [NSString stringWithFormat:@"เมื่อคุณเกษียณอายุ %.0f ปี",newRetireAge];
}

//Expand Year of Work --------------------------------------------------------------------------------
- (void)setexpandWorkYearValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: expandWorkYearResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    [expandWorkYearLabel setText:[NSString stringWithFormat:@"%@ ปี",[numFormatter stringFromNumber:result]]];
    [numFormatter release];
    [result release];
    [self setResultLabel];
}

- (IBAction)expandWorkYearChange:(id)sender{
    expandWorkYearSlider.minimumValue = RetireAge;
    expandWorkYearSlider.maximumValue = AgeAfterRetire;
    expandWorkYearSlider = (UISlider *)sender;
    expandWorkYearResult =(int)(expandWorkYearSlider.value + 0.5f);
    expandWorkYear = expandWorkYearResult;
    [self setexpandWorkYearValue];
}

- (IBAction)expandWorkYearDecrease:(id)sender{
    expandWorkYearSlider.minimumValue = RetireAge;
    expandWorkYearSlider.maximumValue = AgeAfterRetire;
    [expandWorkYearSlider setValue:expandWorkYearSlider.value-1 animated:YES];
    expandWorkYearResult =(int)(expandWorkYearSlider.value + 0.5f);
    expandWorkYear = expandWorkYearResult;
    [self setexpandWorkYearValue];
}

- (IBAction)expandWorkYearIncrease:(id)sender{
    expandWorkYearSlider.minimumValue = RetireAge;
    expandWorkYearSlider.maximumValue = AgeAfterRetire;
    [expandWorkYearSlider setValue:expandWorkYearSlider.value+1 animated:YES];
    expandWorkYearResult =(int)(expandWorkYearSlider.value + 0.5f);
    expandWorkYear = expandWorkYearResult;
    [self setexpandWorkYearValue];
}
    
//reduce Spend ---------------------------------------------------------------------------------------
- (void)setreduceSpendValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: reduceSpendResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    [reduceSpendLabel setText:[NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]]];
    [numFormatter release];
    [result release];
    
    UIImage *income_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *income_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *income_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *income_4 = [UIImage imageNamed:@"income_4.png"];
    if (reduceSpendResult == 0){
        [reduceSpendImg setImage:NULL];
    }
    else {
        if (reduceSpendResult <= 50000){
            [reduceSpendImg setImage:income_1];
        }
        else {
            if (reduceSpendResult <= 100000){
                [reduceSpendImg setImage:income_2];
            } 
            else {
                if (reduceSpendResult <= 150000){
                    [reduceSpendImg setImage:income_3];
                }
                else {
                    [reduceSpendImg setImage:income_4];
                }
            }
        }
    }
    [self setResultLabel];
}

- (IBAction)reduceSpendChange:(id)sender{
    reduceSpendSlider.minimumValue = 1;
    reduceSpendSlider.maximumValue = MoneyUseAfterRetire/5000;
    reduceSpendSlider = (UISlider *)sender;
    int reduceSpendInt =(int)(reduceSpendSlider.value + 0.5f);
    reduceSpendResult = reduceSpendInt*5000;
    reduceSpend = reduceSpendResult;
    [self setreduceSpendValue];
}

- (IBAction)reduceSpendDecrease:(id)sender{
    reduceSpendSlider.minimumValue = 1;
    reduceSpendSlider.maximumValue = MoneyUseAfterRetire/5000;
    [reduceSpendSlider setValue:reduceSpendSlider.value-1 animated:YES];
    int reduceSpendInt =(int)(reduceSpendSlider.value + 0.5f);
    reduceSpendResult = reduceSpendInt*5000;
    reduceSpend = reduceSpendResult;
    [self setreduceSpendValue];
}

- (IBAction)reduceSpendIncrease:(id)sender{
    reduceSpendSlider.minimumValue = 1;
    reduceSpendSlider.maximumValue = MoneyUseAfterRetire/5000;
    [reduceSpendSlider setValue:reduceSpendSlider.value+1 animated:YES];
    int reduceSpendInt =(int)(reduceSpendSlider.value + 0.5f);
    reduceSpendResult = reduceSpendInt*5000;
    reduceSpend = reduceSpendResult;
    [self setreduceSpendValue];
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)backBtnPressed:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)nextBtnPressed:(id)sender{
    needsViewController = [[NeedsViewController alloc]initWithNibName:@"NeedsViewController" bundle:nil];
    Delegate = (MuangthaiAppDelegate *)[UIApplication sharedApplication].delegate;
    [Delegate setRetirePageEnable:2];
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
    //UIImage *sliderHilighted = [UIImage imageNamed: @"min.png"];
    UIImage *sliderBackground = [UIImage imageNamed: @"seekbar_slide.png"];
    UIImage *center = [UIImage imageNamed: @"seekbar_button.png"];
    
    expandWorkYearSlider.backgroundColor = [UIColor clearColor];
    [expandWorkYearSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [expandWorkYearSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [expandWorkYearSlider setThumbImage: center forState: UIControlStateNormal];
    [expandWorkYearSlider release];
    
    reduceSpendSlider.backgroundColor = [UIColor clearColor];
    [reduceSpendSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [reduceSpendSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [reduceSpendSlider setThumbImage: center forState: UIControlStateNormal];
    [reduceSpendSlider release];
    
    //set up expand year of work label --------------------------------------------------------------
    expandWorkYearResult = expandWorkYear = RetireAge;
    expandWorkYearSlider.maximumValue = AgeAfterRetire;
    expandWorkYearSlider.minimumValue = RetireAge;
    expandWorkYearSlider.value = RetireAge;
    expandWorkYearLabel.text = [NSString stringWithFormat:@"%.0f ปี",RetireAge];
    
    RetireYearResultLabel.text = [NSString stringWithFormat:@"เมื่อคุณเกษียณอายุ %.0f ปี",RetireAge];
    
    //set up reduce spend label ---------------------------------------------------------------------
    reduceSpendResult = reduceSpend = MoneyUseAfterRetire;
    reduceSpendSlider.maximumValue = MoneyUseAfterRetire/5000;
    reduceSpendSlider.minimumValue = 1;
    reduceSpendSlider.value = MoneyUseAfterRetire/5000;
    int MoneyUseAfterRetireInt = MoneyUseAfterRetire;
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: MoneyUseAfterRetireInt];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    reduceSpendLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    
    double allPrepareMoney = DepositInBankOfRetire+PropertyOfRetire;
    int MoreMoneyNeededInt = NeedMoreMoney-allPrepareMoney;
    
    NSNumber *result2 = [[NSNumber alloc] initWithInt: MoreMoneyNeededInt];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    UIImage *income_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *income_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *income_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *income_4 = [UIImage imageNamed:@"income_4.png"];
    if (reduceSpendResult == 0){
        [reduceSpendImg setImage:NULL];
    }
    else {
        if (reduceSpendResult <= 50000){
            [reduceSpendImg setImage:income_1];
        }
        else {
            if (reduceSpendResult <= 100000){
                [reduceSpendImg setImage:income_2];
            } 
            else {
                if (reduceSpendResult <= 150000){
                    [reduceSpendImg setImage:income_3];
                }
                else {
                    [reduceSpendImg setImage:income_4];
                }
            }
        }
    }
    MoreMoneyNeededResultLabel.text = [NSString stringWithFormat:@"คุณต้องมีเงิน %@ บาท",[numFormatter stringFromNumber:result2]];
    [numFormatter release];
    [result2 release];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

/*- (void)dealloc{
    [MoreMoneyNeededResultLabel release];
    [RetireYearResultLabel release];
    
    [expandWorkYearSlider release];
    [expandWorkYearLabel release];
    [expandWorkIncreaseBtn release];
    [expandWorkDecreaseBtn release];
    
    [reduceSpendSlider release];
    [reduceSpendLabel release];
    [reduceSpendImg release];
    [reduceSpendIncreaseBtn release];
    [reduceSpendDecreaseBtn release];
    
    [backBtn release];
    [nextBtn release];
    
    [super dealloc];
}*/

- (void)viewDidUnload
{
    MoreMoneyNeededResultLabel = nil;
    RetireYearResultLabel = nil;
    
    expandWorkYearSlider = nil;
    expandWorkYearLabel = nil;
    expandWorkIncreaseBtn = nil;
    expandWorkDecreaseBtn = nil;
    
    reduceSpendSlider = nil;
    reduceSpendLabel = nil;
    reduceSpendImg = nil;
    reduceSpendIncreaseBtn = nil;
    reduceSpendDecreaseBtn = nil;
    
    backBtn = nil;
    nextBtn = nil;
    
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
