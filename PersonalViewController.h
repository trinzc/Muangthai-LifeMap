//
//  PersonalViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 11/16/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MuangthaiAppDelegate.h"
@class MuangthaiAppDelegate;

@interface PersonalViewController : UINavigationController{
    UITextField *nameField;
    UITextField *lnameField;
    UISlider *ageSlider;
    UILabel *ageLabel;
    UISegmentedControl *genderSelect;
    UISlider *famSizeSlider;
    UILabel *famSizeLabel;
    UITextField *phoneField;
    UITextField *emailField;
    UISlider *yearSalarySlider;
    UILabel *yearSalaryLabel;
    UISlider *otherSalarySlider;
    UILabel *otherSalaryLabel;
    UIButton *nextBtn;
    
    NSString *Name;
    NSString *Lastname;
    NSString *Age;
    NSString *Gender;
    NSString *FamilySize;
    NSString *Phone;
    NSString *Email;
    NSString *yearSalary;
    NSString *otherSalary;
    
    MuangthaiAppDelegate *Delegate;
    
}

@property (nonatomic, retain) IBOutlet UITextField *nameField;
@property (nonatomic, retain) IBOutlet UITextField *lnameField;
@property (nonatomic, retain) IBOutlet UISlider *ageSlider;
@property (nonatomic, retain) IBOutlet UILabel *ageLabel;
@property (nonatomic, retain) IBOutlet UISegmentedControl *genderSelect;
@property (nonatomic, retain) IBOutlet UISlider *famSizeSlider;
@property (nonatomic, retain) IBOutlet UILabel *famSizeLabel;
@property (nonatomic, retain) IBOutlet UITextField *phoneField;
@property (nonatomic, retain) IBOutlet UITextField *emailField;
@property (nonatomic, retain) IBOutlet UISlider *yearSalarySlider;
@property (nonatomic, retain) IBOutlet UILabel *yearSalaryLabel;
@property (nonatomic, retain) IBOutlet UISlider *otherSalarySlider;
@property (nonatomic, retain) IBOutlet UILabel *otherSalaryLabel;
@property (nonatomic, retain) IBOutlet UIButton *nextBtn;

@property (nonatomic, retain) NSString *Name;
@property (nonatomic, retain) NSString *Lastname;
@property (nonatomic, retain) NSString *Age;
@property (nonatomic, retain) NSString *Gender;
@property (nonatomic, retain) NSString *FamilySize;
@property (nonatomic, retain) NSString *Phone;
@property (nonatomic, retain) NSString *Email;
@property (nonatomic, retain) NSString *yearSalary;
@property (nonatomic, retain) NSString *otherSalary;

@property (nonatomic, retain) MuangthaiAppDelegate *Delegate;

@property (nonatomic, retain) NSString *getedPage;

-(IBAction)nameDoneTyping:(id)sender;
-(IBAction)lnameDoneTyping:(id)sender;
-(IBAction)phoneDoneTyping:(id)sender;
-(IBAction)emailDoneTyping:(id)sender;
-(IBAction)ageChanged:(id)sender;
-(IBAction)familySizeChanged:(id)sender;
-(IBAction)genderChanged:(id)sender;
-(IBAction)yearSalaryChanged:(id)sender;
-(IBAction)otherSalaryChanged:(id)sender;

-(IBAction)nextBtnPressed:(id)sender;

@end
