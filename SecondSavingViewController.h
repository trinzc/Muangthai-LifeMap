//
//  SecondSavingViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/21/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondSavingViewController : UIViewController

@property (nonatomic, retain) IBOutlet UISlider *DepositSavingSlider;
@property (nonatomic, retain) IBOutlet UILabel *DepositSavingLabel;
@property (nonatomic, retain) IBOutlet UIImageView *DepositSavingImg;
@property (nonatomic, retain) IBOutlet UIButton *DepositSavingDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *DepositSavingIncreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *PropertySavingSlider;
@property (nonatomic, retain) IBOutlet UILabel *PropertySavingLabel;
@property (nonatomic, retain) IBOutlet UIImageView *PropertySavingImg;
@property (nonatomic, retain) IBOutlet UIButton *PropertySavingDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *PropertySavingIncreaseBtn;

@property (nonatomic) int DepositSaving;
@property (nonatomic) int DepositSavingResult;
@property (nonatomic) int PropertySaving;
@property (nonatomic) int PropertySavingeResult;

@property (nonatomic) double DepositOfSavingFuture;
@property (nonatomic) double EndOfSaving;
@property (nonatomic) double YearOfSaving;
@property (nonatomic) double BonusOfSaving;

@property (nonatomic, retain) IBOutlet UIButton *backBtn;
@property (nonatomic, retain) IBOutlet UIButton *nextBtn;

- (IBAction)DepositSavingChange:(id)sender;
- (void)setDepositSavingValue;
- (IBAction)DepositSavingIncrease:(id)sender;
- (IBAction)DepositSavingDecrease:(id)sender;

- (IBAction)PropertySavingChange:(id)sender;
- (void)setPropertySavingValue;
- (IBAction)PropertySavingIncrease:(id)sender;
- (IBAction)PropertySavingDecrease:(id)sender;

- (IBAction)backBtnPressed:(id)sender;

- (id)getDepositOfSavingFuture:(int)getterDepositOfSavingFuture getEndOfSaving:(int)getterEndOfSaving getYearOfSaving:(int)getterYearOfSaving getBonusOfSaving:(int)getterBonusOfSaving;

- (void)setResultLabel;

@end
