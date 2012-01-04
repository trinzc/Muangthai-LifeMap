//
//  FirstRetirementViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 11/24/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DoubleSlider.h"
#import "SecondRetirementViewController.h"
#import "ThirdRetirementViewController.h"

@class SecondRetirementViewController;
@class ThirdRetirementViewController;

@interface FirstRetirementViewController : UIViewController

@property (nonatomic, retain) SecondRetirementViewController *secondRetirementViewController;
@property (nonatomic, retain) ThirdRetirementViewController *thirdRetirementViewController;

@property (nonatomic, retain) IBOutlet UIButton *NextBtn;
@property (nonatomic, retain) IBOutlet UIButton *BackBtn;

@property (nonatomic, retain) IBOutlet UILabel *AgeBeforeRetireLabel;
@property (nonatomic, retain) IBOutlet UILabel *minAgeLabel;
@property (nonatomic, retain) IBOutlet UILabel *maxAgeLabel;
@property (nonatomic, retain) IBOutlet UILabel *CurrentAgeLabel;
@property (nonatomic, retain) IBOutlet UILabel *RetireAgeLabel;
@property (nonatomic, retain) DoubleSlider *ageRangeSlider;
@property (nonatomic, retain) IBOutlet UILabel *CurrentAgeTitleLabel;
@property (nonatomic, retain) IBOutlet UILabel *RetireAgeTitleLabel;

@property (nonatomic, retain) NSString *minAge;
@property (nonatomic, retain) NSString *maxAge;
@property (nonatomic, retain) NSString *ageRange;

@property (nonatomic, retain) IBOutlet UISlider *AgeAfterRetireSlider;
@property (nonatomic, retain) IBOutlet UILabel *AgeAfterRetireLabel;
@property (nonatomic, retain) IBOutlet UIButton *AgeAfterRetireIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *AgeAfterRetireDecreaseBtn;

@property (nonatomic, retain) IBOutlet UISlider *MoneyUseAfterRetireSlider;
@property (nonatomic, retain) IBOutlet UILabel *MoneyUseAfterRetireLabel;
@property (nonatomic, retain) IBOutlet UIButton *MoneyUseAfterRetireIncreaseBtn;
@property (nonatomic, retain) IBOutlet UIButton *MoneyUseafterRetireDecreaseBtn;

@property (nonatomic) int CurrentAge;
@property (nonatomic) int CurrentAgeResult;
@property (nonatomic) int RetireAge;
@property (nonatomic) int RetireAgeResult;
@property (nonatomic) int AgeBeforeRetire;
@property (nonatomic) int AgeBeforeRetireResult;
@property (nonatomic) int AgeAfterRetire;
@property (nonatomic) int AgeAfterRetireResult;
@property (nonatomic) int MoneyUseAfterRetire;
@property (nonatomic) int MoneyUseAfterRetireResult;

@property (nonatomic) int SummaryResult;

- (IBAction)backBtnPressed:(id)sender;
- (IBAction)nextBtnPressed:(id)sender;

- (IBAction)AgeAfterRetireChange:(id)sender;
- (void)setAgeAfterRetireValue;
- (IBAction)AgeAfterRetireIncrease:(id)sender;
- (IBAction)AgeAfterRetireDecrease:(id)sender;


- (IBAction)MoneyUseAfterRetireChange:(id)sender;
- (void)setMoneyUseAfterRetireValue;
- (IBAction)MoneyUseAfterRetireIncrease:(id)sender;
- (IBAction)MoneyUseAfterRetireDecrease:(id)sender;

@end
