//
//  FirstTaxViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/9/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondTaxViewController.h"

@class SecondTaxViewController;

@interface FirstTaxViewController : UIViewController

@property (nonatomic, retain) SecondTaxViewController *secondTaxViewController;

@property (nonatomic, retain) IBOutlet UISlider *RevenuePerYearSlider;
@property (nonatomic, retain) IBOutlet UILabel *RevenuePerYearLabel;
@property (nonatomic, retain) IBOutlet UIImageView *RevenuePerYearImage;
@property (nonatomic, retain) IBOutlet UIButton *RevenuePerYearIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *RevenuePerYearDecreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *InsuranceGeneralSlider;
@property (nonatomic, retain) IBOutlet UILabel *InsuranceGeneralLabel;
@property (nonatomic, retain) IBOutlet UIButton *InsuranceGeneralIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *InsuranceGeneralDecreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *InsurancePensionsSlider;
@property (nonatomic, retain) IBOutlet UILabel *InsurancePensionsLabel;
@property (nonatomic, retain) IBOutlet UIImageView *InsurancePensionsImage;
@property (nonatomic, retain) IBOutlet UIButton *InsurancePensionsIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *InsurancePensionsDecreaseBtn;

@property (nonatomic, retain) IBOutlet UIButton *nextBtn;
@property (nonatomic, retain) IBOutlet UIButton *backBtn;

@property (nonatomic) int RevenuePerYear;
@property (nonatomic) int RevenuePerYearResult;
@property (nonatomic) int InsuranceGeneral;
@property (nonatomic) int InsuranceGeneralResult;
@property (nonatomic) int InsurancePensions;
@property (nonatomic) int InsurancePensionsResult;

- (IBAction)nextBtnPressed:(id)sender;
- (IBAction)backBtnPressed:(id)sender;

- (IBAction)RevenuePerYearChange:(id)sender;
- (void)setRevenuePerYearValue;
- (IBAction)RevenuePerYearIncrease:(id)sender;
- (IBAction)RevenuePerYearDecrease:(id)sender;

- (IBAction)InsuranceGeneralChange:(id)sender;
- (void)setInsuranceGeneralValue;
- (IBAction)InsuranceGeneralIncrease:(id)sender;
- (IBAction)InsuranceGeneralDecrease:(id)sender;

- (IBAction)InsurancePensionsChange:(id)sender;
- (void)setInsurancePensionsValue;
- (IBAction)InsurancePensionsIncrease:(id)sender;
- (IBAction)InsurancePensionsDecrease:(id)sender;

@end
