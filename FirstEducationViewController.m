//
//  FirstEducationViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/14/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "FirstEducationViewController.h"

@implementation FirstEducationViewController
@synthesize secondEducationViewController;
@synthesize NextBtn,BackBtn;
@synthesize ageEducationSliderBackground,ageEducationSlider,minAge,maxAge,ageRangeBeforeStudy,CurrentChildAgeLabel,StartStudyAgeLabel,CurrentChildText,StartStudyText,CurrentChildAge,StartStudyAge,CurrentChildAgeResult,StartStudyAgeResult;

@synthesize ChildGenderBtn,ChildGender,ChildGenderResult;

@synthesize ChildDegreeLevelSlider,ChildDegreeLevelIncreaseBtn,ChildDegreeLevelDecreaseBtn,ChildDegreeLevel,ChildDegreeLevelResult;

@synthesize TypeOfSchoolSlider,TypeOfSchoolIncreaseBtn,TypeOfSchoolDecreaseBtn,TypeOfSchool,TypeOfSchoolResult;

@synthesize hideAdditionBtn;

@synthesize TutitionFeesIncreasePerYearSlider,TutitionFeesIncreasePerYearTitleLabel,TutitionFeesIncreasePerYearLabel,TutitionFeesIncreasePerYearDecreaseBtn,TutitionFeesIncreasePerYearIncreaseBtn,TutitionFeesIncreasePerYear,TutitionFeesIncreasePerYearResult;
@synthesize TitleLb1,TitleLb2,TitleLb3,TitleLb4,TitleLb5,TitleLb6;

@synthesize interestRateChildSlider,interestRateChildTitleLabel,interestRateChildLabel,intChildDecreaseBtn,intChildIncreaseBtn,interestRateChild,interestRateChildResult;

- (void)valueChangedForDoubleSlider:(DoubleSlider *)slider
{
    minAge = [NSString stringWithFormat:@"%d", slider.minSelectedValue];
	maxAge = [NSString stringWithFormat:@"%d", slider.maxSelectedValue];
    CurrentChildAgeLabel.text = minAge;
    StartStudyAgeLabel.text = maxAge;
    CurrentChildAgeLabel.center = CGPointMake(slider.minHandle.center.x+105, 200);
    StartStudyAgeLabel.center = CGPointMake(slider.maxHandle.center.x+105, 200);
    CurrentChildText.center = CGPointMake(slider.minHandle.center.x+105, 278);
    StartStudyText.center = CGPointMake(slider.maxHandle.center.x+105, 278);
    CurrentChildAge = slider.minSelectedValue;
    StartStudyAge = slider.maxSelectedValue;
    ageRangeBeforeStudy = StartStudyAge-CurrentChildAge;
    NSLog(@"%@ %@ %d",minAge,maxAge,ageRangeBeforeStudy);
    
}

- (IBAction)ChildGenderChange:(id)sender{
    UIImage *MaleSelect = [UIImage imageNamed:@"Men_select.png"];
    UIImage *FemaleSelect = [UIImage imageNamed:@"Women_select.png"];
    NSString *Selected;
    if (ChildGenderResult == 1){
        [ChildGenderBtn setImage:FemaleSelect forState:UIControlStateNormal];
        ChildGender = ChildGenderResult = 0;
        Selected =@"male";
    }
    else {
        [ChildGenderBtn setImage:MaleSelect forState:UIControlStateNormal];
        ChildGender = ChildGenderResult = 1;
        Selected =@"female";
    }
    NSLog(@"%@",Selected);
}

//Child Degree Level --------------------------------------------------------------------------------
- (void)setChildDegreeLevelValue{
    
    UIImage *Edubachelor = [UIImage imageNamed:@"education_thumb.png"];
    UIImage *Edumaster = [UIImage imageNamed:@"education_thumb2.png"];
    UIImage *Edudoctor = [UIImage imageNamed:@"education_thumb3.png"];
    if (ChildDegreeLevelResult == 1) {
        [ChildDegreeLevelSlider setValue:2 animated:YES];
        [ChildDegreeLevelSlider setThumbImage: Edubachelor forState: UIControlStateNormal];        
    }
    else {
        if (ChildDegreeLevelResult == 2) {
            [ChildDegreeLevelSlider setValue:2 animated:YES];
            [ChildDegreeLevelSlider setThumbImage: Edubachelor forState: UIControlStateNormal];
        }
        else {
            if (ChildDegreeLevelResult == 3) {
                [ChildDegreeLevelSlider setValue:3 animated:YES];
                [ChildDegreeLevelSlider setThumbImage: Edumaster forState: UIControlStateNormal];
            }
            else {
                if (ChildDegreeLevelResult == 4) {
                    [ChildDegreeLevelSlider setValue:4 animated:YES];
                    [ChildDegreeLevelSlider setThumbImage: Edudoctor forState: UIControlStateNormal];
                }
                else {
                    [ChildDegreeLevelSlider setValue:4 animated:YES];
                    [ChildDegreeLevelSlider setThumbImage: Edudoctor forState: UIControlStateNormal];
                }
            }
        }
    }
}

- (IBAction)ChildDegreeLevelChange:(id)sender{
    ChildDegreeLevelSlider.minimumValue = 1;
    ChildDegreeLevelSlider.maximumValue = 5;
    ChildDegreeLevelSlider = (UISlider *)sender;
    ChildDegreeLevelResult =(int)(ChildDegreeLevelSlider.value);
    ChildDegreeLevel = ChildDegreeLevelResult;
    [self setChildDegreeLevelValue];
}

- (IBAction)ChildDegreeLevelDecrease:(id)sender{
    ChildDegreeLevelSlider.minimumValue = 1;
    ChildDegreeLevelSlider.maximumValue = 5;
    [ChildDegreeLevelSlider setValue:ChildDegreeLevelSlider.value-1 animated:YES];
    ChildDegreeLevelResult =(int)(ChildDegreeLevelSlider.value);
    ChildDegreeLevel = ChildDegreeLevelResult;
    [self setChildDegreeLevelValue];
}

- (IBAction)ChildDegreeLevelIncrease:(id)sender{
    ChildDegreeLevelSlider.minimumValue = 1;
    ChildDegreeLevelSlider.maximumValue = 5;
    [ChildDegreeLevelSlider setValue:ChildDegreeLevelSlider.value+1 animated:YES];
    ChildDegreeLevelResult =(int)(ChildDegreeLevelSlider.value);
    ChildDegreeLevel = ChildDegreeLevelResult;
    [self setChildDegreeLevelValue];
}

//Type Of School --------------------------------------------------------------------------------
- (void)setTypeOfSchoolValue{
    
    UIImage *government = [UIImage imageNamed:@"goverment_thumb.png"];
    UIImage *international = [UIImage imageNamed:@"international_thumb.png"];
    UIImage *private = [UIImage imageNamed:@"non_goverment_thumb.png"];
    if (TypeOfSchoolResult == 1) {
        [TypeOfSchoolSlider setValue:2 animated:YES];
        [TypeOfSchoolSlider setThumbImage: government forState: UIControlStateNormal];        
    }
    else {
        if (TypeOfSchoolResult == 2) {
            [TypeOfSchoolSlider setValue:2 animated:YES];
            [TypeOfSchoolSlider setThumbImage: government forState: UIControlStateNormal];
        }
        else {
            if (TypeOfSchoolResult == 3) {
                [TypeOfSchoolSlider setValue:3 animated:YES];
                [TypeOfSchoolSlider setThumbImage: international forState: UIControlStateNormal];
            }
            else {
                if (TypeOfSchoolResult == 4) {
                    [TypeOfSchoolSlider setValue:4 animated:YES];
                    [TypeOfSchoolSlider setThumbImage:private forState: UIControlStateNormal];
                }
                else {
                    [TypeOfSchoolSlider setValue:4 animated:YES];
                    [TypeOfSchoolSlider setThumbImage: private forState: UIControlStateNormal];
                }
            }
        }
    }
}

- (IBAction)TypeOfSchoolChange:(id)sender{
    TypeOfSchoolSlider.minimumValue = 1;
    TypeOfSchoolSlider.maximumValue = 5;
    TypeOfSchoolSlider = (UISlider *)sender;
    TypeOfSchoolResult =(int)(TypeOfSchoolSlider.value);
    TypeOfSchool = TypeOfSchoolResult;
    [self setTypeOfSchoolValue];
}

- (IBAction)TypeOfSchoolDecrease:(id)sender{
    TypeOfSchoolSlider.minimumValue = 1;
    TypeOfSchoolSlider.maximumValue = 5;
    [TypeOfSchoolSlider setValue:TypeOfSchoolSlider.value-1 animated:YES];
    TypeOfSchoolResult =(int)(TypeOfSchoolSlider.value);
    TypeOfSchool = TypeOfSchoolResult;
    [self setTypeOfSchoolValue];
}

- (IBAction)TypeOfSchoolIncrease:(id)sender{
    TypeOfSchoolSlider.minimumValue = 1;
    TypeOfSchoolSlider.maximumValue = 5;
    [TypeOfSchoolSlider setValue:TypeOfSchoolSlider.value+1 animated:YES];
    TypeOfSchoolResult =(int)(TypeOfSchoolSlider.value);
    TypeOfSchool = TypeOfSchoolResult;
    [self setTypeOfSchoolValue];
}

//Hide Addition ------------------------------------------------------------------------------------
- (IBAction)HidePressed:(id)sender{
    if (hideAdd==false){
        TutitionFeesIncreasePerYearSlider.hidden = NO;
        interestRateChildSlider.hidden = NO;
        TutitionFeesIncreasePerYearLabel.hidden = NO;
        interestRateChildLabel.hidden = NO;
        TutitionFeesIncreasePerYearTitleLabel.hidden = NO;
        interestRateChildTitleLabel.hidden = NO;
        TutitionFeesIncreasePerYearDecreaseBtn.hidden = NO;
        TutitionFeesIncreasePerYearIncreaseBtn.hidden = NO;
        intChildDecreaseBtn.hidden = NO;
        intChildIncreaseBtn.hidden = NO;
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
        TutitionFeesIncreasePerYearSlider.hidden = YES;
        interestRateChildSlider.hidden = YES;
        TutitionFeesIncreasePerYearLabel.hidden = YES;
        interestRateChildLabel.hidden = YES;
        TutitionFeesIncreasePerYearTitleLabel.hidden = YES;
        interestRateChildTitleLabel.hidden = YES;
        TutitionFeesIncreasePerYearDecreaseBtn.hidden = YES;
        TutitionFeesIncreasePerYearIncreaseBtn.hidden = YES;
        intChildDecreaseBtn.hidden = YES;
        intChildIncreaseBtn.hidden = YES;
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

//Tutition Fees --------------------------------------------------------------------------------
- (void)setTutitionFeesIncreasePerYearValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: TutitionFeesIncreasePerYearResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    TutitionFeesIncreasePerYearLabel.text = [NSString stringWithFormat:@"%@%%",[numFormatter stringFromNumber:result]];
    CGPoint TutitionFeesIncreasePerYearLabelPos = CGPointMake(291+(TutitionFeesIncreasePerYearSlider.value*30),693);
    [TutitionFeesIncreasePerYearLabel setCenter:TutitionFeesIncreasePerYearLabelPos];
}

- (IBAction)TutitionFeesIncreasePerYearChange:(id)sender{
    TutitionFeesIncreasePerYearSlider.minimumValue = 0;
    TutitionFeesIncreasePerYearSlider.maximumValue = 10;
    TutitionFeesIncreasePerYearSlider = (UISlider *)sender;
    TutitionFeesIncreasePerYearResult =(int)(TutitionFeesIncreasePerYearSlider.value + 0.5f);
    TutitionFeesIncreasePerYear = TutitionFeesIncreasePerYearResult;
    [self setTutitionFeesIncreasePerYearValue];
}

- (IBAction)TutitionFeesIncreasePerYearDecrease:(id)sender{
    TutitionFeesIncreasePerYearSlider.minimumValue = 0;
    TutitionFeesIncreasePerYearSlider.maximumValue = 10;
    [TutitionFeesIncreasePerYearSlider setValue:TutitionFeesIncreasePerYearSlider.value-1 animated:YES];
    TutitionFeesIncreasePerYearResult =(int)(TutitionFeesIncreasePerYearSlider.value + 0.5f);
    TutitionFeesIncreasePerYear = TutitionFeesIncreasePerYearResult;
    [self setTutitionFeesIncreasePerYearValue];
}

- (IBAction)TutitionFeesIncreasePerYearIncrease:(id)sender{
    TutitionFeesIncreasePerYearSlider.minimumValue = 0;
    TutitionFeesIncreasePerYearSlider.maximumValue = 10;
    [TutitionFeesIncreasePerYearSlider setValue:TutitionFeesIncreasePerYearSlider.value+1 animated:YES];
    TutitionFeesIncreasePerYearResult =(int)(TutitionFeesIncreasePerYearSlider.value + 0.5f);
    TutitionFeesIncreasePerYear = TutitionFeesIncreasePerYearResult;
    [self setTutitionFeesIncreasePerYearValue];
}

//Interest Rate --------------------------------------------------------------------------------
- (void)setinterestRateChildValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: interestRateChildResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    interestRateChildLabel.text = [NSString stringWithFormat:@"%@%%",[numFormatter stringFromNumber:result]];
    CGPoint interestRateChildLabelPos = CGPointMake(291+(interestRateChildSlider.value*30),827);
    [interestRateChildLabel setCenter:interestRateChildLabelPos];
}

- (IBAction)interestRateChildChange:(id)sender{
    interestRateChildSlider.minimumValue = 0;
    interestRateChildSlider.maximumValue = 10;
    interestRateChildSlider = (UISlider *)sender;
    interestRateChildResult =(int)(interestRateChildSlider.value + 0.5f);
    interestRateChild = interestRateChildResult;
    [self setinterestRateChildValue];
}

- (IBAction)interestRateChildDecrease:(id)sender{
    interestRateChildSlider.minimumValue = 0;
    interestRateChildSlider.maximumValue = 10;
    [interestRateChildSlider setValue:interestRateChildSlider.value-1 animated:YES];
    interestRateChildResult =(int)(interestRateChildSlider.value + 0.5f);
    interestRateChild = interestRateChildResult;
    [self setinterestRateChildValue];
}

- (IBAction)interestRateChildIncrease:(id)sender{
    interestRateChildSlider.minimumValue = 0;
    interestRateChildSlider.maximumValue = 10;
    [interestRateChildSlider setValue:interestRateChildSlider.value+1 animated:YES];
    interestRateChildResult =(int)(interestRateChildSlider.value + 0.5f);
    interestRateChild = interestRateChildResult;
    [self setinterestRateChildValue];
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)nextBtnPressed:(id)sender{
    secondEducationViewController = [[SecondEducationViewController alloc]initWithNibName:@"SecondEducationViewController" bundle:nil];
    [secondEducationViewController getAgeRangeBeforeStudy:ageRangeBeforeStudy getCurrentChildAge:CurrentChildAge getStartStudyAge:StartStudyAge getChildGender:ChildGender getChildDegreeLevel:ChildDegreeLevel getTypeOfSchool:TypeOfSchool getTutitionFeesIncreasePerYear:TutitionFeesIncreasePerYear getInterestRateChild:interestRateChild];
    [self.navigationController pushViewController:secondEducationViewController animated:YES];
    [secondEducationViewController release];
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
    UIImage *invislider = [UIImage imageNamed: @"invisible_seekbar.png"];
    UIImage *sliderBackground = [UIImage imageNamed: @"seekbar_slide.png"];
    UIImage *center = [UIImage imageNamed: @"seekbar_button.png"];
    UIImage *Edubachelor = [UIImage imageNamed:@"education_thumb.png"];
    UIImage *government = [UIImage imageNamed:@"goverment_thumb.png"];
    
    ageEducationSlider = [[[DoubleSlider alloc] initWithFrame:CGRectMake(0., 0., 560., 40.) minValue:1 maxValue:26 barHeight:10.0] autorelease];
    
	[ageEducationSlider addTarget:self action:@selector(valueChangedForDoubleSlider:) forControlEvents:UIControlEventValueChanged];
	ageEducationSlider.center = CGPointMake(384,256);
	[self.view addSubview:ageEducationSlider];
    
    minAge = [NSString stringWithFormat:@"%d", ageEducationSlider.minSelectedValue];
	maxAge = [NSString stringWithFormat:@"%d", ageEducationSlider.maxSelectedValue];
    CurrentChildAge = ageEducationSlider.minSelectedValue;
    StartStudyAge = ageEducationSlider.maxSelectedValue;
    CurrentChildAgeLabel.text = minAge;
    StartStudyAgeLabel.text = maxAge;
    ageRangeBeforeStudy = StartStudyAge-CurrentChildAge;
    
    ChildDegreeLevelSlider.backgroundColor = [UIColor clearColor];
    [ChildDegreeLevelSlider setMinimumTrackImage:invislider forState: UIControlStateNormal];
    [ChildDegreeLevelSlider setMaximumTrackImage:invislider forState: UIControlStateNormal];
    [ChildDegreeLevelSlider setThumbImage: Edubachelor forState: UIControlStateNormal];
    [ChildDegreeLevelSlider release];
    
    TypeOfSchoolSlider.backgroundColor = [UIColor clearColor];
    [TypeOfSchoolSlider setMinimumTrackImage:invislider forState: UIControlStateNormal];
    [TypeOfSchoolSlider setMaximumTrackImage:invislider forState: UIControlStateNormal];
    [TypeOfSchoolSlider setThumbImage: government forState: UIControlStateNormal];
    [TypeOfSchoolSlider release];
    
    TutitionFeesIncreasePerYearSlider.backgroundColor = [UIColor clearColor];
    [TutitionFeesIncreasePerYearSlider setMinimumTrackImage:sliderBackground forState: UIControlStateNormal];
    [TutitionFeesIncreasePerYearSlider setMaximumTrackImage:sliderBackground forState: UIControlStateNormal];
    [TutitionFeesIncreasePerYearSlider setThumbImage: center forState: UIControlStateNormal];
    [TutitionFeesIncreasePerYearSlider release];
    
    interestRateChildSlider.backgroundColor = [UIColor clearColor];
    [interestRateChildSlider setMinimumTrackImage:sliderBackground forState: UIControlStateNormal];
    [interestRateChildSlider setMaximumTrackImage:sliderBackground forState: UIControlStateNormal];
    [interestRateChildSlider setThumbImage: center forState: UIControlStateNormal];
    [interestRateChildSlider release];
    
    hideAdd = false;
    TutitionFeesIncreasePerYearSlider.hidden = YES;
    interestRateChildSlider.hidden = YES;
    TutitionFeesIncreasePerYearLabel.hidden = YES;
    interestRateChildLabel.hidden = YES;
    TutitionFeesIncreasePerYearTitleLabel.hidden = YES;
    interestRateChildTitleLabel.hidden = YES;
    TutitionFeesIncreasePerYearDecreaseBtn.hidden = YES;
    TutitionFeesIncreasePerYearIncreaseBtn.hidden = YES;
    intChildDecreaseBtn.hidden = YES;
    intChildIncreaseBtn.hidden = YES;
    TitleLb1.hidden = YES;
    TitleLb2.hidden = YES;
    TitleLb3.hidden = YES;
    TitleLb4.hidden = YES;
    TitleLb5.hidden = YES;
    TitleLb6.hidden = YES;
    
    TutitionFeesIncreasePerYearLabel.text = @"3%";
    TutitionFeesIncreasePerYearSlider.value = 3;
    TutitionFeesIncreasePerYear = TutitionFeesIncreasePerYearResult = 3;
    CGPoint TutitionFeesIncreasePerYearLabelPos = CGPointMake(291+(TutitionFeesIncreasePerYearSlider.value*30),693);
    [TutitionFeesIncreasePerYearLabel setCenter:TutitionFeesIncreasePerYearLabelPos];
    
    interestRateChildLabel.text = @"1%";
    interestRateChildSlider.value = 1;
    interestRateChild = interestRateChildResult = 1;
    CGPoint interestRateChildLabelPos = CGPointMake(291+(interestRateChildSlider.value*30),827);
    [interestRateChildLabel setCenter:interestRateChildLabelPos];
    
    ChildGender = ChildGenderResult = 1;
    ChildDegreeLevel =ChildDegreeLevelResult = 1;
    TypeOfSchool = TypeOfSchoolResult = 1;
    
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
