//
//  RootViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/1/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChecklistViewController.h"
#import "FirstRetirementViewController.h"
#import "FirstTaxViewController.h"
#import "FirstEducationViewController.h"
#import "FirstAssuranceViewController.h"
#import "FirstSavingViewController.h"

@interface RootViewController : UIViewController <UIPickerViewDelegate,NSFetchedResultsControllerDelegate>

@property (nonatomic, retain) IBOutlet UIButton *NextBtn;
@property (nonatomic, retain) ChecklistViewController *checklistViewController;
@property (nonatomic, retain) FirstRetirementViewController *firstRetirementViewController;
@property (nonatomic, retain) FirstTaxViewController *firstTaxViewController;
@property (nonatomic, retain) FirstEducationViewController *firstEducationViewController;
@property (nonatomic, retain) FirstAssuranceViewController *firstAssuranceViewController;
@property (nonatomic, retain) FirstSavingViewController *firstSavingViewController;
@property (nonatomic, retain) IBOutlet UIPickerView *pickView;
@property (nonatomic, retain) IBOutlet UILabel *pickViewLabel;
@property (nonatomic, retain) NSMutableArray *arrayOfView;

- (IBAction)ViewSelected:(id)sender;
- (IBAction)NextBtnPressed:(id)sender;

@end
