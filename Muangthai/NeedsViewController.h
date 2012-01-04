//
//  NeedsViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/22/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MuangthaiAppDelegate.h"
#import "FirstRetirementViewController.h"
#import "FirstTaxViewController.h"
#import "FirstEducationViewController.h"
#import "FirstAssuranceViewController.h"
#import "FirstSavingViewController.h"
#import "SummaryViewController.h"
#import "ChecklistViewController.h"

@class MuangthaiAppDelegate;
@class FirstRetirementViewController;
@class FirstTaxViewController;
@class FirstEducationViewController;
@class FirstAssuranceViewController;
@class FirstSavingViewController;
@class SummaryViewController;
@class ChecklistViewController;

@interface NeedsViewController : UIViewController

@property (nonatomic, retain) MuangthaiAppDelegate *Delegate;
@property (nonatomic, retain) ChecklistViewController *checklistViewController;

@property (nonatomic, retain) FirstRetirementViewController *firstRetirementViewController;
@property (nonatomic, retain) FirstTaxViewController *firstTaxViewController;
@property (nonatomic, retain) FirstEducationViewController *firstEducationViewController;
@property (nonatomic, retain) FirstAssuranceViewController *firstAssuranceViewController;
@property (nonatomic, retain) FirstSavingViewController *firstSavingViewController;
@property (nonatomic, retain) SummaryViewController *summaryViewController;

@property (nonatomic, retain) IBOutlet UIButton *RetireBtn;
@property (nonatomic, retain) IBOutlet UIButton *TaxBtn;
@property (nonatomic, retain) IBOutlet UIButton *EducationBtn;
@property (nonatomic, retain) IBOutlet UIButton *AssuranceBtn;
@property (nonatomic, retain) IBOutlet UIButton *SavingBtn;

@property (nonatomic, retain) IBOutlet UIButton *backBtn;
@property (nonatomic, retain) IBOutlet UIButton *nextBtn;

- (IBAction)RetireBtnPressed:(id)sender;
- (IBAction)TaxBtnPressed:(id)sender;
- (IBAction)EducationBtnPressed:(id)sender;
- (IBAction)AssuranceBtnPressed:(id)sender;
- (IBAction)SavingBtnPressed:(id)sender;

- (IBAction)nextBtnPressed:(id)sender;
- (IBAction)backBtnPressed:(id)sender;

- (void)setNeedsEnable;

- (void)setRetireBtnEnable;
- (void)setTaxBtnEnable;
- (void)setEducationBtnEnable;
- (void)setAssuranceBtnEnable;
- (void)setSavingBtnEnable;

@end
