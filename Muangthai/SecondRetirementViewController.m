//
//  SecondRetirementViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 11/24/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "SecondRetirementViewController.h"

@implementation SecondRetirementViewController
@synthesize DepositInBankOfRetireSlider,DepositInBankOfRetireLabel,DepositInBankOfRetireImg,DepositInBankOfRetireDecreaseBtn,DepositInBankOfRetireIncreaseBtn;
@synthesize PropertyOfRetireSlider,PropertyOfRetireLabel,PropertyOfRetireImg,PropertyOfRetireDecreaseBtn,PropertyOfRetireIncreaseBtn;
@synthesize hideAdditionBtn;
@synthesize inflationRateSlider,inflationRateLabel,inflationRateTitleLabel,infDecreaseBtn,infIncreaseBtn;
@synthesize interestRateSlider,interestRateLabel,interestRateTitleLabel,intDecreaseBtn,intIncreaseBtn;
@synthesize DepositInBankOfRetire,DepositInBankOfRetireResult,PropertyOfRetire,PropertyOfRetireResult,inflationRate,inflationRateResult,interestRate,interestRateResult;
@synthesize nextBtn,backBtn;
@synthesize NeedMoreMoneyLabel;
@synthesize firstRetirementViewController,thirdRetirementViewController,Delegate;
@synthesize CurrentAge,RetireAge,AgeBeforeRetire,AgeAfterRetire,MoneyUseAfterRetire;
@synthesize TitleLb1,TitleLb2,TitleLb3,TitleLb4,TitleLb5,TitleLb6;
@synthesize NeedMoreMoney,NeedMoreMoneyResult;

- (id)getCurrentAge:(double)getterCurrentAge getRetireAge:(double)getterRetireAge getAgeBeforeRetire:(double)getterAgeBeforeRetire getAgeAfterRetire:(double)getterAgeAfterRetire getMoneyUseAfterRetire:(double)getterMoneyUseAfterRetire{
    self.CurrentAge = getterCurrentAge;
    self.RetireAge = getterRetireAge;
    self.AgeBeforeRetire = getterAgeBeforeRetire;
    self.AgeAfterRetire = getterAgeAfterRetire;
    self.MoneyUseAfterRetire = getterMoneyUseAfterRetire;
    return self;
}

- (void)setResultLabel{
    double allMoneyUseAfterRetire = MoneyUseAfterRetire*12;
    double inflationRateUse = inflationRate/100;
    double interestRateUse = interestRate/100;
    
    if (inflationRate == interestRate){
        double result = ((allMoneyUseAfterRetire*(AgeAfterRetire-RetireAge))/pow((1+interestRateUse),AgeBeforeRetire));
        NeedMoreMoneyResult = NeedMoreMoney = (int)result;
    } 
    else{
        double result = (((allMoneyUseAfterRetire*(1-(pow(((1+inflationRateUse)/(1+interestRateUse)),(AgeAfterRetire-RetireAge))))/(1-((1+inflationRateUse)/(1+interestRateUse))))/(pow((1+interestRateUse),AgeBeforeRetire))));
        NeedMoreMoneyResult = NeedMoreMoney = (int)result;
    }
    
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: NeedMoreMoneyResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    NeedMoreMoneyLabel.text = [NSString stringWithFormat:@"ฉันต้องมีเงิน %@ บาท เมื่อฉันเกษียณอายุ %.0f ปี",[numFormatter stringFromNumber:result],RetireAge];
    [numFormatter release];
    [result release];
}

//Deposit in Bank of retirement ----------------------------------------------------------------------
- (void)setDepositInBankOfRetireValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: DepositInBankOfRetireResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    DepositInBankOfRetireLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    [numFormatter release];
    [result release];
    UIImage *deposit_1 = [UIImage imageNamed:@"deposit_1.png"];
    UIImage *deposit_2 = [UIImage imageNamed:@"deposit_2.png"];
    UIImage *deposit_3 = [UIImage imageNamed:@"deposit_3.png"];
    UIImage *deposit_4 = [UIImage imageNamed:@"deposit_4.png"];
    if (DepositInBankOfRetireResult == 0){
        [DepositInBankOfRetireImg setImage:NULL];
    }
    else {
        if (DepositInBankOfRetireResult <= 400000){
            [DepositInBankOfRetireImg setImage:deposit_1];
        }
        else {
            if (DepositInBankOfRetireResult <= 800000){
                [DepositInBankOfRetireImg setImage:deposit_2];
            } 
            else {
                if (DepositInBankOfRetireResult <= 1200000){
                    [DepositInBankOfRetireImg setImage:deposit_3];
                }
                else {
                    [DepositInBankOfRetireImg setImage:deposit_4];
                }
            }
        }
    }
}

- (IBAction)DepositInBankOfRetireChange:(id)sender{
    DepositInBankOfRetireSlider.minimumValue = 0;
    DepositInBankOfRetireSlider.maximumValue = 15;
    DepositInBankOfRetireSlider = (UISlider *)sender;
    int DepositInBankOfRetireInt =(int)(DepositInBankOfRetireSlider.value + 0.5f);
    DepositInBankOfRetireResult = DepositInBankOfRetireInt*100000;
    DepositInBankOfRetire = DepositInBankOfRetireResult;
    [self setDepositInBankOfRetireValue];
}

- (IBAction)DepositInBankOfRetireDecrease:(id)sender{
    DepositInBankOfRetireSlider.minimumValue = 0;
    DepositInBankOfRetireSlider.maximumValue = 15;
    [DepositInBankOfRetireSlider setValue:DepositInBankOfRetireSlider.value-1 animated:YES];
    int DepositInBankOfRetireInt =(int)(DepositInBankOfRetireSlider.value + 0.5f);
    DepositInBankOfRetireResult = DepositInBankOfRetireInt*100000;
    DepositInBankOfRetire = DepositInBankOfRetireResult;
    [self setDepositInBankOfRetireValue];
}

- (IBAction)DepositInBankOfRetireIncrease:(id)sender{
    DepositInBankOfRetireSlider.minimumValue = 0;
    DepositInBankOfRetireSlider.maximumValue = 15;
    [DepositInBankOfRetireSlider setValue:DepositInBankOfRetireSlider.value+1 animated:YES];
    int DepositInBankOfRetireInt =(int)(DepositInBankOfRetireSlider.value + 0.5f);
    DepositInBankOfRetireResult = DepositInBankOfRetireInt*100000;
    DepositInBankOfRetire = DepositInBankOfRetireResult;
    [self setDepositInBankOfRetireValue];
}

//Property Of Retire --------------------------------------------------------------------------------
- (void)setPropertyOfRetireValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: PropertyOfRetireResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    PropertyOfRetireLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    [numFormatter release];
    [result release];
    UIImage *investment_1 = [UIImage imageNamed:@"investment_1.png"];
    UIImage *investment_2 = [UIImage imageNamed:@"investment_2.png"];
    UIImage *investment_3 = [UIImage imageNamed:@"investment_3.png"];
    UIImage *investment_4 = [UIImage imageNamed:@"investment_4.png"];
    if (PropertyOfRetireResult == 0){
        [PropertyOfRetireImg setImage:NULL];
    }
    else {
        if (PropertyOfRetireResult <= 400000){
            [PropertyOfRetireImg setImage:investment_1];
        }
        else {
            if (PropertyOfRetireResult <= 800000){
                [PropertyOfRetireImg setHighlighted:YES];
                [PropertyOfRetireImg setImage:investment_2];
            } 
            else {
                if (PropertyOfRetireResult <= 1200000){
                    [PropertyOfRetireImg setHighlighted:YES];
                    [PropertyOfRetireImg setImage:investment_3];
                }
                else {
                    [PropertyOfRetireImg setHighlighted:YES];
                    [PropertyOfRetireImg setImage:investment_4];
                }
            }
        }
    }
}

- (IBAction)PropertyOfRetireChange:(id)sender{
    PropertyOfRetireSlider.minimumValue = 0;
    PropertyOfRetireSlider.maximumValue = 15;
    PropertyOfRetireSlider = (UISlider *)sender;
    int PropertyOfRetireInt =(int)(PropertyOfRetireSlider.value + 0.5f);
    PropertyOfRetireResult = PropertyOfRetireInt*100000;
    PropertyOfRetire = PropertyOfRetireResult;
    [self setPropertyOfRetireValue];
}

- (IBAction)PropertyOfRetireDecrease:(id)sender{
    PropertyOfRetireSlider.minimumValue = 0;
    PropertyOfRetireSlider.maximumValue = 15;
    [PropertyOfRetireSlider setValue:PropertyOfRetireSlider.value-1 animated:YES];
    int PropertyOfRetireInt =(int)(PropertyOfRetireSlider.value + 0.5f);
    PropertyOfRetireResult = PropertyOfRetireInt*100000;
    PropertyOfRetire = PropertyOfRetireResult;
    [self setPropertyOfRetireValue];
}

- (IBAction)PropertyOfRetireIncrease:(id)sender{
    PropertyOfRetireSlider.minimumValue = 0;
    PropertyOfRetireSlider.maximumValue = 15;
    [PropertyOfRetireSlider setValue:PropertyOfRetireSlider.value+1 animated:YES];
    int PropertyOfRetireInt =(int)(PropertyOfRetireSlider.value + 0.5f);
    PropertyOfRetireResult = PropertyOfRetireInt*100000;
    PropertyOfRetire = PropertyOfRetireResult;
    [self setPropertyOfRetireValue];
}

//Hide Addition ------------------------------------------------------------------------------------
- (IBAction)HidePressed:(id)sender{
    if (hideAdd==false){
        inflationRateSlider.hidden = NO;
        interestRateSlider.hidden = NO;
        inflationRateLabel.hidden = NO;
        interestRateLabel.hidden = NO;
        inflationRateTitleLabel.hidden = NO;
        interestRateTitleLabel.hidden = NO;
        infDecreaseBtn.hidden = NO;
        infIncreaseBtn.hidden = NO;
        intDecreaseBtn.hidden = NO;
        intIncreaseBtn.hidden = NO;
        TitleLb1.hidden = NO;
        TitleLb2.hidden = NO;
        TitleLb3.hidden = NO;
        TitleLb4.hidden = NO;
        TitleLb5.hidden = NO;
        TitleLb6.hidden = NO;
        hideAdd = true;
        UIImage *checkBox =[UIImage imageNamed:@"check_box.png"];
        [hideAdditionBtn setImage:checkBox forState:UIControlStateNormal] ;
    }
    else {
        inflationRateSlider.hidden = YES;
        interestRateSlider.hidden = YES;
        inflationRateLabel.hidden = YES;
        interestRateLabel.hidden = YES;
        inflationRateTitleLabel.hidden = YES;
        interestRateTitleLabel.hidden = YES;
        infDecreaseBtn.hidden = YES;
        infIncreaseBtn.hidden = YES;
        intDecreaseBtn.hidden = YES;
        intIncreaseBtn.hidden = YES;
        TitleLb1.hidden = YES;
        TitleLb2.hidden = YES;
        TitleLb3.hidden = YES;
        TitleLb4.hidden = YES;
        TitleLb5.hidden = YES;
        TitleLb6.hidden = YES;
        hideAdd = false;
        UIImage *uncheckBox =[UIImage imageNamed:@"uncheck_box.png"];
        [hideAdditionBtn setImage:uncheckBox forState:UIControlStateNormal];
    }
}

//Inflation Rate --------------------------------------------------------------------------------
- (void)setinflationRateValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: inflationRateResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    inflationRateLabel.text = [NSString stringWithFormat:@"%@%%",[numFormatter stringFromNumber:result]];
    [numFormatter release];
    [result release];
    CGPoint inflationRateLabelPos = CGPointMake(266+(inflationRateSlider.value*30),700);
    [inflationRateLabel setCenter:inflationRateLabelPos];
    [self setResultLabel];
}

- (IBAction)inflationRateChange:(id)sender{
    inflationRateSlider.minimumValue = 0;
    inflationRateSlider.maximumValue = 10;
    inflationRateSlider = (UISlider *)sender;
    inflationRateResult =(int)(inflationRateSlider.value + 0.5f);
    inflationRate = inflationRateResult;
    [self setinflationRateValue];
}

- (IBAction)inflationRateDecrease:(id)sender{
    inflationRateSlider.minimumValue = 0;
    inflationRateSlider.maximumValue = 10;
    [inflationRateSlider setValue:inflationRateSlider.value-1 animated:YES];
    inflationRateResult =(int)(inflationRateSlider.value + 0.5f);
    inflationRate = inflationRateResult;
    [self setinflationRateValue];
}

- (IBAction)inflationRateIncrease:(id)sender{
    inflationRateSlider.minimumValue = 0;
    inflationRateSlider.maximumValue = 10;
    [inflationRateSlider setValue:inflationRateSlider.value+1 animated:YES];
    inflationRateResult =(int)(inflationRateSlider.value + 0.5f);
    inflationRate = inflationRateResult;
    [self setinflationRateValue];
}

//Interest Rate --------------------------------------------------------------------------------
- (void)setinterestRateValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: interestRateResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    interestRateLabel.text = [NSString stringWithFormat:@"%@%%",[numFormatter stringFromNumber:result]];
    [numFormatter release];
    [result release];
    
    CGPoint interestRateLabelPos = CGPointMake(266+(interestRateSlider.value*30),834);
    [interestRateLabel setCenter:interestRateLabelPos];
    [self setResultLabel];
}

- (IBAction)interestRateChange:(id)sender{
    interestRateSlider.minimumValue = 0;
    interestRateSlider.maximumValue = 10;
    interestRateSlider = (UISlider *)sender;
    interestRateResult =(int)(interestRateSlider.value + 0.5f);
    interestRate = interestRateResult;
    [self setinterestRateValue];
}

- (IBAction)interestRateDecrease:(id)sender{
    interestRateSlider.minimumValue = 0;
    interestRateSlider.maximumValue = 10;
    [interestRateSlider setValue:interestRateSlider.value-1 animated:YES];
    interestRateResult =(int)(interestRateSlider.value + 0.5f);
    interestRate = interestRateResult;
    [self setinterestRateValue];
}

- (IBAction)interestRateIncrease:(id)sender{
    interestRateSlider.minimumValue = 0;
    interestRateSlider.maximumValue = 10;
    [interestRateSlider setValue:interestRateSlider.value+1 animated:YES];
    interestRateResult =(int)(interestRateSlider.value + 0.5f);
    interestRate = interestRateResult;
    [self setinterestRateValue];
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)nextBtnPressed:(id)sender{
    thirdRetirementViewController = [[ThirdRetirementViewController alloc]initWithNibName:@"ThirdRetirementViewController" bundle:nil];
    [thirdRetirementViewController getCurrentAge:CurrentAge getRetireAge:RetireAge getAgeBeforeRetire:AgeBeforeRetire getAgeAfterRetire:AgeAfterRetire getMoneyUseAfterRetire:MoneyUseAfterRetire getNeedMoreMoney:NeedMoreMoney getDepositInBankOfRetire:DepositInBankOfRetire getPropertyOfRetire:PropertyOfRetire getInflationRate:inflationRate getInterestRate:interestRate];
    [self.navigationController pushViewController:thirdRetirementViewController animated:YES];
    [thirdRetirementViewController release];
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
    DepositInBankOfRetireLabel.text = @"0 บาท";
    PropertyOfRetireLabel.text = @"0 บาท";
    hideAdd = false;
    inflationRateSlider.hidden = YES;
    interestRateSlider.hidden = YES;
    inflationRateLabel.hidden = YES;
    interestRateLabel.hidden = YES;
    inflationRateTitleLabel.hidden = YES;
    interestRateTitleLabel.hidden = YES;
    infDecreaseBtn.hidden = YES;
    infIncreaseBtn.hidden = YES;
    intDecreaseBtn.hidden = YES;
    intIncreaseBtn.hidden = YES;
    TitleLb1.hidden = YES;
    TitleLb2.hidden = YES;
    TitleLb3.hidden = YES;
    TitleLb4.hidden = YES;
    TitleLb5.hidden = YES;
    TitleLb6.hidden = YES;
    
    //UIImage *sliderHilighted = [UIImage imageNamed: @"min.png"];
    UIImage *sliderBackground = [UIImage imageNamed: @"seekbar_slide.png"];
    UIImage *center = [UIImage imageNamed: @"seekbar_button.png"];
    
    DepositInBankOfRetireSlider.backgroundColor = [UIColor clearColor];
    [DepositInBankOfRetireSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [DepositInBankOfRetireSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [DepositInBankOfRetireSlider setThumbImage: center forState: UIControlStateNormal];
    [DepositInBankOfRetireSlider release];
    
    PropertyOfRetireSlider.backgroundColor = [UIColor clearColor];
    [PropertyOfRetireSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [PropertyOfRetireSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [PropertyOfRetireSlider setThumbImage: center forState: UIControlStateNormal];
    [PropertyOfRetireSlider release];
    
    inflationRateSlider.backgroundColor = [UIColor clearColor];
    [inflationRateSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [inflationRateSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [inflationRateSlider setThumbImage: center forState: UIControlStateNormal];
    [inflationRateSlider release];
    
    interestRateSlider.backgroundColor = [UIColor clearColor];
    [interestRateSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [interestRateSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [interestRateSlider setThumbImage: center forState: UIControlStateNormal];
    [interestRateSlider release];
    
    inflationRateLabel.text = @"3%";
    inflationRateSlider.value = 3;
    inflationRate =  inflationRateResult = 3;
    CGPoint inflationRateLabelPos = CGPointMake(266+(inflationRateSlider.value*30),700);
    [inflationRateLabel setCenter:inflationRateLabelPos];
    
    interestRateLabel.text = @"2%";
    interestRateSlider.value = 2;
    interestRate =  interestRateResult = 2;
    CGPoint interestRateLabelPos = CGPointMake(266+(interestRateSlider.value*30),834);
    [interestRateLabel setCenter:interestRateLabelPos];
    
    [self setResultLabel];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    DepositInBankOfRetireSlider = nil;
    DepositInBankOfRetireLabel = nil;
    DepositInBankOfRetireImg =nil;
    DepositInBankOfRetireDecreaseBtn = nil;
    DepositInBankOfRetireIncreaseBtn = nil;
    
    PropertyOfRetireSlider = nil;
    PropertyOfRetireLabel = nil;
    PropertyOfRetireImg = nil;
    PropertyOfRetireDecreaseBtn = nil;
    PropertyOfRetireIncreaseBtn = nil;
    
    hideAdditionBtn = nil;
    inflationRateSlider = nil;
    inflationRateLabel = nil;
    inflationRateTitleLabel = nil;
    infDecreaseBtn = nil;
    infIncreaseBtn = nil;
    
    interestRateSlider = nil;
    interestRateLabel = nil;
    interestRateTitleLabel = nil;
    intDecreaseBtn = nil;
    intIncreaseBtn = nil;
    
    TitleLb1 = nil;
    TitleLb2 = nil;
    TitleLb3 = nil;
    TitleLb4 = nil;
    TitleLb5 = nil;
    TitleLb6 = nil;
    
    NeedMoreMoneyLabel = nil;
    
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
