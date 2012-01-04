//
//  FirstAssuranceViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/20/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondAssuranceViewController.h"

@class SecondAssuranceViewController;

@interface FirstAssuranceViewController : UIViewController

@property (nonatomic, retain) SecondAssuranceViewController *secondAssuranceViewController;

@property (nonatomic, retain) IBOutlet UISlider *CostOfSpendPerYearSlider;
@property (nonatomic, retain) IBOutlet UILabel *CostOfSpendPerYearLabel;
@property (nonatomic, retain) IBOutlet UIImageView *CostOfSpendPerYearImg;
@property (nonatomic, retain) IBOutlet UIButton *CostOfSpendPerYearDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *CostOfSpendPerYearIncreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *CostOfPublicUtilitySlider;
@property (nonatomic, retain) IBOutlet UILabel *CostOfPublicUtilityLabel;
@property (nonatomic, retain) IBOutlet UIImageView *CostOfPublicUtilityImg;
@property (nonatomic, retain) IBOutlet UIButton *CostOfPublicUtilityDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *CostOfPublicUtilityIncreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *CostOfInstallmentSlider;
@property (nonatomic, retain) IBOutlet UILabel *CostOfInstallmentLabel;
@property (nonatomic, retain) IBOutlet UIImageView *CostOfInstallmentImg;
@property (nonatomic, retain) IBOutlet UIButton *CostOfInstallmentDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *CostOfInstallmentIncreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *CostOfOtherSlider;
@property (nonatomic, retain) IBOutlet UILabel *CostOfOtherLabel;
@property (nonatomic, retain) IBOutlet UIImageView *CostOfOtherImg;
@property (nonatomic, retain) IBOutlet UIButton *CostOfOtherDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *CostOfOtherIncreaseBtn;

@property (nonatomic) int CostOfSpendPerYear;
@property (nonatomic) int CostOfSpendPerYearResult;
@property (nonatomic) int CostOfPublicUtility;
@property (nonatomic) int CostOfPublicUtilityResult;
@property (nonatomic) int CostOfInstallment;
@property (nonatomic) int CostOfInstallmentResult;
@property (nonatomic) int CostOfOther;
@property (nonatomic) int CostOfOtherResult;

@property (nonatomic, retain) IBOutlet UIButton *backBtn;
@property (nonatomic, retain) IBOutlet UIButton *nextBtn;

- (IBAction)CostOfSpendPerYearChange:(id)sender;
- (void)setCostOfSpendPerYearValue;
- (IBAction)CostOfSpendPerYearIncrease:(id)sender;
- (IBAction)CostOfSpendPerYearDecrease:(id)sender;

- (IBAction)CostOfPublicUtilityChange:(id)sender;
- (void)setCostOfPublicUtilityValue;
- (IBAction)CostOfPublicUtilityIncrease:(id)sender;
- (IBAction)CostOfPublicUtilityDecrease:(id)sender;

- (IBAction)CostOfInstallmentChange:(id)sender;
- (void)setCostOfInstallmentValue;
- (IBAction)CostOfInstallmentIncrease:(id)sender;
- (IBAction)CostOfInstallmentDecrease:(id)sender;

- (IBAction)CostOfOtherChange:(id)sender;
- (void)setCostOfOtherValue;
- (IBAction)CostOfOtherIncrease:(id)sender;
- (IBAction)CostOfOtherDecrease:(id)sender;

- (IBAction)backBtnPressed:(id)sender;
- (IBAction)nextBtnPressed:(id)sender;

@end
