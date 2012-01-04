//
//  MuangthaiAppDelegate.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/1/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MuangthaiAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@property (nonatomic) int RetirePageEnable;
@property (nonatomic) int TaxPageEnable;
@property (nonatomic) int EducationPageEnable;
@property (nonatomic) int AssurancePageEnable;
@property (nonatomic) int SavingPageEnable;

- (id)getRetirePageEnable:(int)getterRetirePageEnable getTaxPageEnable:(int)getterTaxPageEnable getEducationPageEnable:(int)getterEducationPageEnable getAssurancePageEnable:(int)getterAssurancePageEnable getSavingPageEnable:(int)getterSavingPageEnable;

@end
