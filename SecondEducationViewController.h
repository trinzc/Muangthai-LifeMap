//
//  SecondEducationViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/16/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondEducationViewController : UIViewController

@property (nonatomic, retain) IBOutlet UISlider *DepositInBankChildSlider;
@property (nonatomic, retain) IBOutlet UILabel *DepositInBankChildLabel;
@property (nonatomic, retain) IBOutlet UIImageView *DepositInBankChildImg;
@property (nonatomic, retain) IBOutlet UIButton *DepositInBankChildIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *DepositInBankChildDecreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *PropertyChildSlider;
@property (nonatomic, retain) IBOutlet UILabel *PropertyChildLabel;
@property (nonatomic, retain) IBOutlet UIImageView *PropertyChildImg;
@property (nonatomic, retain) IBOutlet UIButton *PropertyChildIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *PropertyChildDecreaseBtn;

@property (nonatomic, retain) IBOutlet UILabel *MoreMoneyChildResultLabel;
@property (nonatomic, retain) IBOutlet UILabel *EducationMoneyChildResultLabel;
@property (nonatomic, retain) IBOutlet UILabel *EducationDegreeChildResultLabel;

@property (nonatomic, retain) IBOutlet UIButton *nextBtn;
@property (nonatomic, retain) IBOutlet UIButton *backBtn;

@property (nonatomic) int DepositInBankChild;
@property (nonatomic) int DepositInBankChildResult;
@property (nonatomic) int PropertyChild;
@property (nonatomic) int PropertyChildResult;

@property (nonatomic) double ageRangeBeforeStudy;
@property (nonatomic) double CurrentChildAge;
@property (nonatomic) double StartStudyAge;
@property (nonatomic) double ChildGender;
@property (nonatomic) double ChildDegreeLevel;
@property (nonatomic) double TypeOfSchool;
@property (nonatomic) double TutitionFeesIncreasePerYear;
@property (nonatomic) double interestRateChild;

- (id)getAgeRangeBeforeStudy:(int)getterAgeRangeBeforeStudy getCurrentChildAge:(int)getterCurrentChildAge getStartStudyAge:(int)getterStartStudyAge getChildGender:(int)getterChildGender getChildDegreeLevel:(int)getterChildDegreeLevel getTypeOfSchool:(int)getterTypeOfSchool getTutitionFeesIncreasePerYear:(int)getterTutitionFeesIncreasePerYear getInterestRateChild:(int)getterInterestRateChild;

- (void)setResultLabel;

- (IBAction)DepositInBankChildChange:(id)sender;
- (void)setDepositInBankChildValue;
- (IBAction)DepositInBankChildIncrease:(id)sender;
- (IBAction)DepositInBankChildDecrease:(id)sender;

- (IBAction)PropertyChildChange:(id)sender;
- (void)setPropertyChildValue;
- (IBAction)PropertyChildIncrease:(id)sender;
- (IBAction)PropertyChildDecrease:(id)sender;

- (IBAction)backBtnPressed:(id)sender;
- (IBAction)nextBtnPressed:(id)sender;

@end
