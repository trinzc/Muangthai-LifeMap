//
//  SecondRetirementViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 11/24/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstRetirementViewController.h"
#import "ThirdRetirementViewController.h"
#import "MuangthaiAppDelegate.h"

@class FirstRetirementViewController;
@class ThirdRetirementViewController;
@class MuangthaiAppDelegate;

@interface SecondRetirementViewController : UIViewController{
    bool hideAdd;
}
@property (nonatomic, retain) IBOutlet UISlider *DepositInBankOfRetireSlider;
@property (nonatomic, retain) IBOutlet UILabel *DepositInBankOfRetireLabel;
@property (nonatomic, retain) IBOutlet UIImageView *DepositInBankOfRetireImg;
@property (nonatomic, retain) IBOutlet UIButton *DepositInBankOfRetireIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *DepositInBankOfRetireDecreaseBtn;


@property (nonatomic, retain) IBOutlet UISlider *PropertyOfRetireSlider;
@property (nonatomic, retain) IBOutlet UILabel *PropertyOfRetireLabel;
@property (nonatomic, retain) IBOutlet UIImageView *PropertyOfRetireImg;
@property (nonatomic, retain) IBOutlet UIButton *PropertyOfRetireIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *PropertyOfRetireDecreaseBtn;

@property (nonatomic, retain) IBOutlet UIButton *hideAdditionBtn;

@property (nonatomic, retain) IBOutlet UISlider *inflationRateSlider;
@property (nonatomic, retain) IBOutlet UILabel *inflationRateTitleLabel;
@property (nonatomic, retain) IBOutlet UILabel *inflationRateLabel;
@property (nonatomic, retain) IBOutlet UIButton *infIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *infDecreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *interestRateSlider;
@property (nonatomic, retain) IBOutlet UILabel *interestRateTitleLabel;
@property (nonatomic, retain) IBOutlet UILabel *interestRateLabel;
@property (nonatomic, retain) IBOutlet UIButton *intIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *intDecreaseBtn;

@property(nonatomic, retain) IBOutlet UILabel *TitleLb1;
@property(nonatomic, retain) IBOutlet UILabel *TitleLb2;
@property(nonatomic, retain) IBOutlet UILabel *TitleLb3;
@property(nonatomic, retain) IBOutlet UILabel *TitleLb4;
@property(nonatomic, retain) IBOutlet UILabel *TitleLb5;
@property(nonatomic, retain) IBOutlet UILabel *TitleLb6;

@property (nonatomic, retain) IBOutlet UILabel *NeedMoreMoneyLabel;

@property (nonatomic) int DepositInBankOfRetire;
@property (nonatomic) int DepositInBankOfRetireResult;

@property (nonatomic) int PropertyOfRetire;
@property (nonatomic) int PropertyOfRetireResult;

@property (nonatomic) double CurrentAge;
@property (nonatomic) double RetireAge;
@property (nonatomic) double AgeBeforeRetire;
@property (nonatomic) double AgeAfterRetire;
@property (nonatomic) double MoneyUseAfterRetire;

@property (nonatomic) double inflationRate;
@property (nonatomic) double inflationRateResult;

@property (nonatomic) double interestRate;
@property (nonatomic) double interestRateResult;

@property (nonatomic) int NeedMoreMoney;
@property (nonatomic) int NeedMoreMoneyResult;

@property (nonatomic, retain) IBOutlet UIButton *nextBtn;
@property (nonatomic, retain) IBOutlet UIButton *backBtn;

@property (nonatomic, retain) FirstRetirementViewController *firstRetirementViewController;
@property (nonatomic, retain) ThirdRetirementViewController *thirdRetirementViewController;
@property (nonatomic, retain) MuangthaiAppDelegate *Delegate;

- (IBAction)DepositInBankOfRetireChange:(id)sender;
- (void)setDepositInBankOfRetireValue;
- (IBAction)DepositInBankOfRetireIncrease:(id)sender;
- (IBAction)DepositInBankOfRetireDecrease:(id)sender;

-(IBAction)PropertyOfRetireChange:(id)sender;
- (void)setPropertyOfRetireValue;
- (IBAction)PropertyOfRetireIncrease:(id)sender;
- (IBAction)PropertyOfRetireDecrease:(id)sender;

-(IBAction)HidePressed:(id)sender;

-(IBAction)inflationRateChange:(id)sender;
- (void)setinflationRateValue;
- (IBAction)inflationRateIncrease:(id)sender;
- (IBAction)inflationRateDecrease:(id)sender;

-(IBAction)interestRateChange:(id)sender;
- (void)setinterestRateValue;
- (IBAction)interestRateIncrease:(id)sender;
- (IBAction)interestRateDecrease:(id)sender;

-(IBAction)nextBtnPressed:(id)sender;
-(IBAction)backBtnPressed:(id)sender;

- (id)getCurrentAge:(double)getterCurrentAge getRetireAge:(double)getterRetireAge getAgeBeforeRetire:(double)getterAgeBeforeRetire getAgeAfterRetire:(double)getterAgeAfterRetire getMoneyUseAfterRetire:(double)getterMoneyUseAfterRetire;

- (void)setResultLabel;

@end
