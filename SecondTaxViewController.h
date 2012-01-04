//
//  SecondTaxViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/9/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondTaxViewController : UIViewController

@property (nonatomic, retain) IBOutlet UISlider *ReserveTypeSlider;

@property (nonatomic, retain) IBOutlet UISlider *MoneyReserveSlider;
@property (nonatomic, retain) IBOutlet UILabel *MoneyReserveLabel;
@property (nonatomic, retain) IBOutlet UIImageView *MoneyReserveImg;
@property (nonatomic, retain) IBOutlet UIButton *MoneyReserveIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *MoneyReserveDecreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *RMFFundSlider;
@property (nonatomic, retain) IBOutlet UILabel *RMFFundLabel;
@property (nonatomic, retain) IBOutlet UIImageView *RMFFundImg;
@property (nonatomic, retain) IBOutlet UIButton *RMFFundIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *RMFFundDecreaseBtn;

@property (nonatomic, retain) IBOutlet UILabel *InsuranceGeneralResultLabel;
@property (nonatomic, retain) IBOutlet UILabel *InsurancePensionsResultLabel;
@property (nonatomic, retain) IBOutlet UILabel *BuyMoreInsuranceResultLabel;

@property (nonatomic, retain) IBOutlet UIButton *nextBtn;
@property (nonatomic, retain) IBOutlet UIButton *backBtn;

@property (nonatomic) int ReserveType;
@property (nonatomic) int ReserveTypeResult;
@property (nonatomic) int MoneyReserve;
@property (nonatomic) int MoneyReserveResult;
@property (nonatomic) int RMFFund;
@property (nonatomic) int RMFFundResult;

@property (nonatomic) double RevenuePerYear;
@property (nonatomic) double InsuranceGeneral;
@property (nonatomic) double InsurancePensions;

- (id)getRevenuePerYear:(int)getterRevenuePerYear getInsuranceGeneral:(int)getterInsuranceGeneral getInsurancePensions:(int)getterInsurancePensions;

- (void)setResultLabel;

- (IBAction)ReserveTypeChange:(id)sender;

- (IBAction)MoneyReserveChange:(id)sender;
- (void)setMoneyReserveValue;
- (IBAction)MoneyReserveIncrease:(id)sender;
- (IBAction)MoneyReserveDecrease:(id)sender;

- (IBAction)RMFFundChange:(id)sender;
- (void)setRMFFundValue;
- (IBAction)RMFFundIncrease:(id)sender;
- (IBAction)RMFFundDecrease:(id)sender;

- (IBAction)backBtnPressed:(id)sender;
- (IBAction)nextBtnPressed:(id)sender;

@end
