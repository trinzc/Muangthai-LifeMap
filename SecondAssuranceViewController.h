//
//  SecondAssuranceViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/21/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondAssuranceViewController : UIViewController

@property (nonatomic, retain) IBOutlet UISlider *DepositAssuranceSlider;
@property (nonatomic, retain) IBOutlet UILabel *DepositAssuranceLabel;
@property (nonatomic, retain) IBOutlet UIImageView *DepositAssuranceImg;
@property (nonatomic, retain) IBOutlet UIButton *DepositAssurancerDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *DepositAssuranceIncreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *PropertyAssuranceSlider;
@property (nonatomic, retain) IBOutlet UILabel *PropertyAssuranceLabel;
@property (nonatomic, retain) IBOutlet UIImageView *PropertyAssuranceImg;
@property (nonatomic, retain) IBOutlet UIButton *PropertyAssuranceDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *PropertyAssuranceIncreaseBtn;

@property (nonatomic, retain) IBOutlet UILabel *ResultLabel;

@property (nonatomic) int DepositAssurance;
@property (nonatomic) int DepositAssuranceResult;
@property (nonatomic) int PropertyAssurance;
@property (nonatomic) int PropertyAssuranceResult;

@property (nonatomic) double CostOfSpendPerYear;
@property (nonatomic) double CostOfPublicUtility;
@property (nonatomic) double CostOfInstallment;
@property (nonatomic) double CostOfOther;

@property (nonatomic, retain) IBOutlet UIButton *backBtn;
@property (nonatomic, retain) IBOutlet UIButton *nextBtn;

- (IBAction)DepositAssuranceChange:(id)sender;
- (void)setDepositAssuranceValue;
- (IBAction)DepositAssuranceIncrease:(id)sender;
- (IBAction)DepositAssuranceDecrease:(id)sender;

- (IBAction)PropertyAssuranceChange:(id)sender;
- (void)setPropertyAssuranceValue;
- (IBAction)PropertyAssuranceIncrease:(id)sender;
- (IBAction)PropertyAssuranceDecrease:(id)sender;

- (id)getCostOfSpendPerYear:(int)getterCostOfSpendPerYear getCostOfPublicUtility:(int)getterCostOfPublicUtility getCostOfInstallment:(int)getterCostOfInstallment getCostOfOther:(int)getterCostOfOther;

- (void)setResultLabel;

- (IBAction)backBtnPressed:(id)sender;

@end
