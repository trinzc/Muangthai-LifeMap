//
//  ThirdRetirementViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 11/24/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NeedsViewController.h"

@class NeedsViewController;
@class MuangthaiAppDelegate;

@interface ThirdRetirementViewController : UIViewController

@property (nonatomic, retain) NeedsViewController *needsViewController;
@property (nonatomic, retain) MuangthaiAppDelegate *Delegate;

@property (nonatomic, retain) IBOutlet UILabel *MoreMoneyNeededResultLabel;
@property (nonatomic, retain) IBOutlet UILabel *RetireYearResultLabel;

@property (nonatomic, retain) IBOutlet UISlider *expandWorkYearSlider;
@property (nonatomic, retain) IBOutlet UILabel *expandWorkYearLabel;
@property (nonatomic, retain) IBOutlet UIButton *expandWorkIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *expandWorkDecreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *reduceSpendSlider;
@property (nonatomic, retain) IBOutlet UILabel *reduceSpendLabel;
@property (nonatomic, retain) IBOutlet UIImageView *reduceSpendImg;
@property (nonatomic, retain) IBOutlet UIButton *reduceSpendIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *reduceSpendDecreaseBtn;

@property (nonatomic) int expandWorkYear;
@property (nonatomic) int expandWorkYearResult;
@property (nonatomic) int reduceSpend;
@property (nonatomic) int reduceSpendResult;

@property (nonatomic) double DepositInBankOfRetire;
@property (nonatomic) double PropertyOfRetire;
@property (nonatomic) double CurrentAge;
@property (nonatomic) double RetireAge;
@property (nonatomic) double AgeBeforeRetire;
@property (nonatomic) double AgeAfterRetire;
@property (nonatomic) double MoneyUseAfterRetire;
@property (nonatomic) double inflationRate;
@property (nonatomic) double interestRate;
@property (nonatomic) int NeedMoreMoney;

@property (nonatomic, retain) IBOutlet UIButton *backBtn;
@property (nonatomic, retain) IBOutlet UIButton *nextBtn;

- (id)getCurrentAge:(double)getterCurrentAge getRetireAge:(double)getterRetireAge getAgeBeforeRetire:(double)getterAgeBeforeRetire getAgeAfterRetire:(double)getterAgeAfterRetire getMoneyUseAfterRetire:(double)getterMoneyUseAfterRetire getNeedMoreMoney:(int)getterNeedMoreMoney getDepositInBankOfRetire:(int)getterDepositInBankOfRetire getPropertyOfRetire:(int)getterPropertyOfRetire getInflationRate:(double)getterInflationRate getInterestRate:(double)getterInterestRate;

- (void)setResultLabel;

- (IBAction)expandWorkYearChange:(id)sender;
- (void)setexpandWorkYearValue;
- (IBAction)expandWorkYearIncrease:(id)sender;
- (IBAction)expandWorkYearDecrease:(id)sender;

- (IBAction)reduceSpendChange:(id)sender;
- (void)setreduceSpendValue;
- (IBAction)reduceSpendIncrease:(id)sender;
- (IBAction)reduceSpendDecrease:(id)sender;

- (IBAction)backBtnPressed:(id)sender;
- (IBAction)nextBtnPressed:(id)sender;

@end
