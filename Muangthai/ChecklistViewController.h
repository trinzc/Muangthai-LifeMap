//
//  ChecklistViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/22/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MuangthaiAppDelegate.h"
#import "NeedsViewController.h"

@class MuangthaiAppDelegate;
@class NeedsViewController;

@interface ChecklistViewController : UIViewController <NSFetchedResultsControllerDelegate>

@property (nonatomic, retain) MuangthaiAppDelegate *Delegate;
@property (nonatomic, retain) NeedsViewController *needsViewController;

@property (nonatomic, retain) IBOutlet UIButton *nextBtn;

@property (nonatomic, retain) IBOutlet UIButton *RetireBtn1;
@property (nonatomic, retain) IBOutlet UIButton *RetireBtn2;

@property (nonatomic, retain) IBOutlet UIButton *TaxBtn1;
@property (nonatomic, retain) IBOutlet UIButton *TaxBtn2;

@property (nonatomic, retain) IBOutlet UIButton *EducationBtn1;
@property (nonatomic, retain) IBOutlet UIButton *EducationBtn2;

@property (nonatomic, retain) IBOutlet UIButton *AssuranceBtn1;
@property (nonatomic, retain) IBOutlet UIButton *AssuranceBtn2;

@property (nonatomic, retain) IBOutlet UIButton *SavingBtn1;
@property (nonatomic, retain) IBOutlet UIButton *SavingBtn2;

@property (nonatomic) int RetireEnable1;
@property (nonatomic) int RetireEnable2;

@property (nonatomic) int TaxEnable1;
@property (nonatomic) int TaxEnable2;

@property (nonatomic) int EducationEnable1;
@property (nonatomic) int EducationEnable2;

@property (nonatomic) int AssuranceEnable1;
@property (nonatomic) int AssuranceEnable2;

@property (nonatomic) int SavingEnable1;
@property (nonatomic) int SavingEnable2;

@property (nonatomic) int RetirePageEnable;
@property (nonatomic) int TaxPageEnable;
@property (nonatomic) int EducationPageEnable;
@property (nonatomic) int AssurancePageEnable;
@property (nonatomic) int SavingPageEnable;

- (IBAction)RetireBtn1Pressed:(id)sender;
- (IBAction)RetireBtn2Pressed:(id)sender;

- (IBAction)TaxBtn1Pressed:(id)sender;
- (IBAction)TaxBtn2Pressed:(id)sender;

- (IBAction)EducationBtn1Pressed:(id)sender;
- (IBAction)EducationBtn2Pressed:(id)sender;

- (IBAction)AssuranceBtn1Pressed:(id)sender;
- (IBAction)AssuranceBtn2Pressed:(id)sender;

- (IBAction)SavingBtn1Pressed:(id)sender;
- (IBAction)SavingBtn2Pressed:(id)sender;

- (void)setRetirePageEnable;
- (void)setTaxPageEnable;
- (void)setEducationPageEnable;
- (void)setAssurancePageEnable;
- (void)setSavingPageEnable;


- (IBAction)nextBtnPressed:(id)sender;

@end
