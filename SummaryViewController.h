//
//  SummaryViewController.h
//  Muangthai
//
//  Created by Charuwat Insiri on 12/22/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "2DFragmentedDoughNut.h"
#import "DoughtNutFragmentTitle.h"

@interface SummaryViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIButton *backBtn;

- (IBAction)backBtnPressed:(id)sender;
- (void)setPieChardValue;

@end
