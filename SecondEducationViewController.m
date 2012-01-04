//
//  SecondEducationViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/16/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "SecondEducationViewController.h"

@implementation SecondEducationViewController
@synthesize DepositInBankChildSlider,DepositInBankChildLabel,DepositInBankChildImg,DepositInBankChildDecreaseBtn,DepositInBankChildIncreaseBtn,DepositInBankChild,DepositInBankChildResult;
@synthesize PropertyChildSlider,PropertyChildLabel,PropertyChildImg,PropertyChildDecreaseBtn,PropertyChildIncreaseBtn,PropertyChild,PropertyChildResult;

@synthesize MoreMoneyChildResultLabel,EducationMoneyChildResultLabel,EducationDegreeChildResultLabel;

@synthesize nextBtn,backBtn;

@synthesize ageRangeBeforeStudy,CurrentChildAge,StartStudyAge,ChildGender,ChildDegreeLevel,TypeOfSchool,TutitionFeesIncreasePerYear,interestRateChild;

- (id)getAgeRangeBeforeStudy:(int)getterAgeRangeBeforeStudy getCurrentChildAge:(int)getterCurrentChildAge getStartStudyAge:(int)getterStartStudyAge getChildGender:(int)getterChildGender getChildDegreeLevel:(int)getterChildDegreeLevel getTypeOfSchool:(int)getterTypeOfSchool getTutitionFeesIncreasePerYear:(int)getterTutitionFeesIncreasePerYear getInterestRateChild:(int)getterInterestRateChild{
    self.ageRangeBeforeStudy = getterAgeRangeBeforeStudy;
    self.CurrentChildAge = getterCurrentChildAge;
    self.StartStudyAge = getterStartStudyAge;
    self.ChildGender = getterChildGender;
    self.ChildDegreeLevel = getterChildDegreeLevel;
    self.TypeOfSchool = getterTypeOfSchool;
    self.TutitionFeesIncreasePerYear = getterTutitionFeesIncreasePerYear;
    self.interestRateChild = getterInterestRateChild;
    return self;
}

- (void)setResultLabel{
    int SchoolType;
    int SchoolDegree;
    
    int Bachlor = 22;
    int Master = 25;
    int Doctor = 28;
    int GovermentSchool = 50000;
    int PrivateSchool = 60000;
    int InterSchool = 300000;
    //double Money;
    
    if (TypeOfSchool == 1){
        SchoolType = GovermentSchool;
        NSLog(@"GovermentSchool");
    }
    else if (TypeOfSchool == 2){
        SchoolType = PrivateSchool;
        NSLog(@"PrivateSchool");
    }
    else{
        SchoolType = InterSchool;
        NSLog(@"InterSchool");
    }
    
    if (ChildDegreeLevel == 1){
        SchoolDegree = Bachlor;
        NSLog(@"Bachlor");
    }
    else if (ChildDegreeLevel == 2){
        SchoolDegree = Master;
        NSLog(@"Master");
    }
    else {
        SchoolDegree = Doctor;
        NSLog(@"Doctor");
    }
    
    if (TutitionFeesIncreasePerYear  == interestRateChild){ 
        double result = (SchoolType*(SchoolDegree-StartStudyAge))/pow((1+(interestRateChild/100)),ageRangeBeforeStudy);
        NSLog(@"%.0f",result);
    } else 
    { 
        //double result = SchoolType*(1-((1+(TutitionFeesIncreasePerYear/100))/pow((1+(interestRateChild/100)),(TypeOfSchool - StartStudyAge)))/(1-(1+(TutitionFeesIncreasePerYear/100))/(1+(interestRateChild/100)))/pow((1+(interestRateChild/100)),(StartStudyAge - CurrentChildAge)));
        
        double result1 = 1-pow(((1+(TutitionFeesIncreasePerYear/100))/(1+(interestRateChild/100))),TypeOfSchool-StartStudyAge);
        
        double result2 = (1-(1+(TutitionFeesIncreasePerYear/100))/(1+(interestRateChild/100)))/pow((1+(interestRateChild/100)),ageRangeBeforeStudy);
        
        double result = (SchoolType*result1)/result2;
        
        NSLog(@"%.0f",result);
                     }
    
    
}

//Deposit in Bank of Education Child ----------------------------------------------------------------
- (void)setDepositInBankChildValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: DepositInBankChildResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    DepositInBankChildLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    UIImage *deposit_1 = [UIImage imageNamed:@"deposit_1.png"];
    UIImage *deposit_2 = [UIImage imageNamed:@"deposit_2.png"];
    UIImage *deposit_3 = [UIImage imageNamed:@"deposit_3.png"];
    UIImage *deposit_4 = [UIImage imageNamed:@"deposit_4.png"];
    if (DepositInBankChildResult == 0){
        [DepositInBankChildImg setImage:NULL];
    }
    else {
        if (DepositInBankChildResult <= 400000){
            [DepositInBankChildImg setImage:deposit_1];
        }
        else {
            if (DepositInBankChildResult <= 800000){
                [DepositInBankChildImg setImage:deposit_2];
            } 
            else {
                if (DepositInBankChildResult <= 1200000){
                    [DepositInBankChildImg setImage:deposit_3];
                }
                else {
                    [DepositInBankChildImg setImage:deposit_4];
                }
            }
        }
    }
}

- (IBAction)DepositInBankChildChange:(id)sender{
    DepositInBankChildSlider.minimumValue = 0;
    DepositInBankChildSlider.maximumValue = 15;
    DepositInBankChildSlider = (UISlider *)sender;
    int DepositInBankChildInt =(int)(DepositInBankChildSlider.value + 0.5f);
    DepositInBankChildResult = DepositInBankChildInt*100000;
    DepositInBankChild = DepositInBankChildResult;
    [self setDepositInBankChildValue];
}

- (IBAction)DepositInBankChildDecrease:(id)sender{
    DepositInBankChildSlider.minimumValue = 0;
    DepositInBankChildSlider.maximumValue = 15;
    [DepositInBankChildSlider setValue:DepositInBankChildSlider.value-1 animated:YES];
    int DepositInBankChildInt =(int)(DepositInBankChildSlider.value + 0.5f);
    DepositInBankChildResult = DepositInBankChildInt*100000;
    DepositInBankChild = DepositInBankChildResult;
    [self setDepositInBankChildValue];
}

- (IBAction)DepositInBankChildIncrease:(id)sender{
    DepositInBankChildSlider.minimumValue = 0;
    DepositInBankChildSlider.maximumValue = 15;
    [DepositInBankChildSlider setValue:DepositInBankChildSlider.value+1 animated:YES];
    int DepositInBankChildInt =(int)(DepositInBankChildSlider.value + 0.5f);
    DepositInBankChildResult = DepositInBankChildInt*100000;
    DepositInBankChild = DepositInBankChildResult;
    [self setDepositInBankChildValue];
}

//Property Education Child ---------------------------------------------------------------------------
- (void)setPropertyChildValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: PropertyChildResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    PropertyChildLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    UIImage *investment_1 = [UIImage imageNamed:@"investment_1.png"];
    UIImage *investment_2 = [UIImage imageNamed:@"investment_2.png"];
    UIImage *investment_3 = [UIImage imageNamed:@"investment_3.png"];
    UIImage *investment_4 = [UIImage imageNamed:@"investment_4.png"];
    if (PropertyChildResult == 0){
        [PropertyChildImg setImage:NULL];
    }
    else {
        if (PropertyChildResult <= 400000){
            [PropertyChildImg setImage:investment_1];
        }
        else {
            if (PropertyChildResult <= 800000){
                [PropertyChildImg setImage:investment_2];
            } 
            else {
                if (PropertyChildResult <= 1200000){
                    [PropertyChildImg setImage:investment_3];
                }
                else {
                    [PropertyChildImg setImage:investment_4];
                }
            }
        }
    }
}

- (IBAction)PropertyChildChange:(id)sender{
    PropertyChildSlider.minimumValue = 0;
    PropertyChildSlider.maximumValue = 15;
    PropertyChildSlider = (UISlider *)sender;
    int PropertyChildInt =(int)(PropertyChildSlider.value + 0.5f);
    PropertyChildResult = PropertyChildInt*100000;
    PropertyChild = PropertyChildResult;
    [self setPropertyChildValue];
}

- (IBAction)PropertyChildDecrease:(id)sender{
    PropertyChildSlider.minimumValue = 0;
    PropertyChildSlider.maximumValue = 15;
    [PropertyChildSlider setValue:PropertyChildSlider.value-1 animated:YES];
    int PropertyChildInt =(int)(PropertyChildSlider.value + 0.5f);
    PropertyChildResult = PropertyChildInt*100000;
    PropertyChild = PropertyChildResult;
    [self setPropertyChildValue];
}

- (IBAction)PropertyChildIncrease:(id)sender{
    PropertyChildSlider.minimumValue = 0;
    PropertyChildSlider.maximumValue = 15;
    [PropertyChildSlider setValue:PropertyChildSlider.value+1 animated:YES];
    int PropertyChildInt =(int)(PropertyChildSlider.value + 0.5f);
    PropertyChildResult = PropertyChildInt*100000;
    PropertyChild = PropertyChildResult;
    [self setPropertyChildValue];
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)nextBtnPressed:(id)sender{
    [self setResultLabel];
    NSLog(@"age range:%.0f current:%.0f start study:%.0f gender:%.0f degree:%.0f type:%.0f tutor:%.0f int:%.0f",ageRangeBeforeStudy,CurrentChildAge,StartStudyAge,ChildGender,ChildDegreeLevel,TypeOfSchool,TutitionFeesIncreasePerYear,interestRateChild);
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
    
    DepositInBankChildSlider.backgroundColor = [UIColor clearColor];
    [DepositInBankChildSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [DepositInBankChildSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [DepositInBankChildSlider setThumbImage: center forState: UIControlStateNormal];
    [DepositInBankChildSlider release];
    
    PropertyChildSlider.backgroundColor = [UIColor clearColor];
    [PropertyChildSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [PropertyChildSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [PropertyChildSlider setThumbImage: center forState: UIControlStateNormal];
    [PropertyChildSlider release];
    
    [DepositInBankChildLabel setText:@"0 บาท"];
    [PropertyChildLabel setText:@"0 บาท"];
    
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
