//
//  FirstEducationViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/14/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DoubleSlider.h"
#import "SecondEducationViewController.h"

@class DoubleSlider;
@class SecondEducationViewController;

@interface FirstEducationViewController : UIViewController{
    bool hideAdd;

}

@property (nonatomic, retain) SecondEducationViewController *secondEducationViewController;

@property (nonatomic, retain) IBOutlet UIButton *NextBtn;
@property (nonatomic, retain) IBOutlet UIButton *BackBtn;

@property (nonatomic, retain) IBOutlet UILabel *CurrentChildAgeLabel;
@property (nonatomic, retain) IBOutlet UILabel *CurrentChildText;
@property (nonatomic, retain) IBOutlet UILabel *StartStudyAgeLabel;
@property (nonatomic, retain) IBOutlet UILabel *StartStudyText;
@property (nonatomic, retain) IBOutlet UIImageView *ageEducationSliderBackground;
@property (nonatomic, retain) IBOutlet DoubleSlider *ageEducationSlider;

@property (nonatomic, retain) IBOutlet UIButton *ChildGenderBtn;

@property (nonatomic, retain) IBOutlet UISlider *ChildDegreeLevelSlider;
@property (nonatomic, retain) IBOutlet UIButton *ChildDegreeLevelIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *ChildDegreeLevelDecreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *TypeOfSchoolSlider;
@property (nonatomic, retain) IBOutlet UIButton *TypeOfSchoolIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *TypeOfSchoolDecreaseBtn;

@property (nonatomic, retain) IBOutlet UIButton *hideAdditionBtn;

@property (nonatomic, retain) IBOutlet UISlider *TutitionFeesIncreasePerYearSlider;
@property (nonatomic, retain) IBOutlet UILabel *TutitionFeesIncreasePerYearTitleLabel;
@property (nonatomic, retain) IBOutlet UILabel *TutitionFeesIncreasePerYearLabel;
@property (nonatomic, retain) IBOutlet UIButton *TutitionFeesIncreasePerYearIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *TutitionFeesIncreasePerYearDecreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *interestRateChildSlider;
@property (nonatomic, retain) IBOutlet UILabel *interestRateChildTitleLabel;
@property (nonatomic, retain) IBOutlet UILabel *interestRateChildLabel;
@property (nonatomic, retain) IBOutlet UIButton *intChildIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *intChildDecreaseBtn;

@property(nonatomic, retain) IBOutlet UILabel *TitleLb1;
@property(nonatomic, retain) IBOutlet UILabel *TitleLb2;
@property(nonatomic, retain) IBOutlet UILabel *TitleLb3;
@property(nonatomic, retain) IBOutlet UILabel *TitleLb4;
@property(nonatomic, retain) IBOutlet UILabel *TitleLb5;
@property(nonatomic, retain) IBOutlet UILabel *TitleLb6;

@property (nonatomic, retain) NSString *minAge;
@property (nonatomic, retain) NSString *maxAge;
@property (nonatomic) int ageRangeBeforeStudy;
@property (nonatomic) int CurrentChildAge;
@property (nonatomic) int StartStudyAge;
@property (nonatomic) int CurrentChildAgeResult;
@property (nonatomic) int StartStudyAgeResult;

@property (nonatomic) int ChildGender;
@property (nonatomic) int ChildGenderResult;

@property (nonatomic) int ChildDegreeLevel;
@property (nonatomic) int ChildDegreeLevelResult;

@property (nonatomic) int TypeOfSchool;
@property (nonatomic) int TypeOfSchoolResult;

@property (nonatomic) int TutitionFeesIncreasePerYear;
@property (nonatomic) int TutitionFeesIncreasePerYearResult;

@property (nonatomic) int interestRateChild;
@property (nonatomic) int interestRateChildResult;

- (IBAction)ChildGenderChange:(id)sender;

- (IBAction)ChildDegreeLevelChange:(id)sender;
- (IBAction)ChildDegreeLevelIncrease:(id)sender;
- (IBAction)ChildDegreeLevelDecrease:(id)sender;
- (void)setChildDegreeLevelValue;

- (IBAction)TypeOfSchoolChange:(id)sender;
- (IBAction)TypeOfSchoolIncrease:(id)sender;
- (IBAction)TypeOfSchoolDecrease:(id)sender;
- (void)setTypeOfSchoolValue;

-(IBAction)HidePressed:(id)sender;

-(IBAction)TutitionFeesIncreasePerYearChange:(id)sender;
- (void)setTutitionFeesIncreasePerYearValue;
- (IBAction)TutitionFeesIncreasePerYearIncrease:(id)sender;
- (IBAction)TutitionFeesIncreasePerYearDecrease:(id)sender;

-(IBAction)interestRateChildChange:(id)sender;
- (void)setinterestRateChildValue;
- (IBAction)interestRateChildIncrease:(id)sender;
- (IBAction)interestRateChildDecrease:(id)sender;

- (IBAction)nextBtnPressed:(id)sender;
- (IBAction)backBtnPressed:(id)sender;

@end
