//
//  FirstSavingViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/21/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondSavingViewController.h"

@class SecondSavingViewController;

@interface FirstSavingViewController : UIViewController

@property (nonatomic, retain) SecondSavingViewController *secondSavingViewController;

@property (nonatomic, retain) IBOutlet UISlider *DepositOfSavingFutureSlider;
@property (nonatomic, retain) IBOutlet UILabel *DepositOfSavingFutureLabel;
@property (nonatomic, retain) IBOutlet UIImageView *DepositOfSavingFutureImg;
@property (nonatomic, retain) IBOutlet UIButton *DepositOfSavingFutureDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *DepositOfSavingFutureIncreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *EndOfSavingSlider;
@property (nonatomic, retain) IBOutlet UILabel *EndOfSavingLabel;
@property (nonatomic, retain) IBOutlet UIImageView *EndOfSavingImg;
@property (nonatomic, retain) IBOutlet UIButton *EndOfSavingDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *EndOfSavingIncreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *YearOfSavingSlider;
@property (nonatomic, retain) IBOutlet UILabel *YearOfSavingLabel;
@property (nonatomic, retain) IBOutlet UIImageView *YearOfSavingImg;
@property (nonatomic, retain) IBOutlet UIButton *YearOfSavingDecreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *YearOfSavingIncreaseBtn;

@property (nonatomic, retain) IBOutlet UIButton *BonusOfSavingBtn;

@property (nonatomic) int DepositOfSavingFuture;
@property (nonatomic) int DepositOfSavingFutureResult;
@property (nonatomic) int EndOfSaving;
@property (nonatomic) int EndOfSavingResult;
@property (nonatomic) int YearOfSaving;
@property (nonatomic) int YearOfSavingResult;
@property (nonatomic) int BonusOfSaving;
@property (nonatomic) int BonusOfSavingResult;

@property (nonatomic, retain) IBOutlet UIButton *backBtn;
@property (nonatomic, retain) IBOutlet UIButton *nextBtn;

- (IBAction)DepositOfSavingFutureChange:(id)sender;
- (void)setDepositOfSavingFutureValue;
- (IBAction)DepositOfSavingFutureIncrease:(id)sender;
- (IBAction)DepositOfSavingFutureDecrease:(id)sender;

- (IBAction)EndOfSavingChange:(id)sender;
- (void)setEndOfSavingValue;
- (IBAction)EndOfSavingIncrease:(id)sender;
- (IBAction)EndOfSavingDecrease:(id)sender;

- (IBAction)YearOfSavingChange:(id)sender;
- (void)setYearOfSavingValue;
- (IBAction)YearOfSavingIncrease:(id)sender;
- (IBAction)YearOfSavingDecrease:(id)sender;

- (IBAction)BonusOfSavingBtnPressed:(id)sender;

- (IBAction)backBtnPressed:(id)sender;
- (IBAction)nextBtnPressed:(id)sender;

@end
