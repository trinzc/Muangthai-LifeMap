//
//  RootViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/1/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

@synthesize NextBtn,firstRetirementViewController,firstTaxViewController,firstEducationViewController,firstAssuranceViewController,firstSavingViewController;
@synthesize checklistViewController;
@synthesize pickView,pickViewLabel,arrayOfView;

- (IBAction)ViewSelected:(id)sender{
    
}

- (IBAction)NextBtnPressed:(id)sender{
    checklistViewController = [[ChecklistViewController alloc]initWithNibName:@"ChecklistViewController" bundle:nil];
    [self.navigationController pushViewController:checklistViewController animated:YES];
    
    /*if ([pickViewLabel.text isEqualToString:@"Retirement"]) {
        firstRetirementViewController = [[FirstRetirementViewController alloc]initWithNibName:@"FirstRetirementViewController" bundle:nil];
        [self.navigationController pushViewController:firstRetirementViewController animated:YES];
    }
    else if ([pickViewLabel.text isEqualToString:@"Tax Deduction"]) {
    firstTaxViewController = [[FirstTaxViewController alloc]initWithNibName:@"FirstTaxViewController" bundle:nil];
    [self.navigationController pushViewController:firstTaxViewController animated:YES];
    }
    else if ([pickViewLabel.text isEqualToString:@"Child Education"]) {
        firstEducationViewController = [[FirstEducationViewController alloc]initWithNibName:@"FirstEducationViewController" bundle:nil];
        [self.navigationController pushViewController:firstEducationViewController animated:YES];
    }
    else if ([pickViewLabel.text isEqualToString:@"Assurance"]) {
        firstAssuranceViewController = [[FirstAssuranceViewController alloc]initWithNibName:@"FirstAssuranceViewController" bundle:nil];
        [self.navigationController pushViewController:firstAssuranceViewController animated:YES];
    }
    else if ([pickViewLabel.text isEqualToString:@"Saving"]) {
        firstSavingViewController = [[FirstSavingViewController alloc]initWithNibName:@"FirstSavingViewController" bundle:nil];
        [self.navigationController pushViewController:firstSavingViewController animated:YES];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert!" message:@"No more View Controllers" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];
    }*/
}

- (void)viewDidLoad
{
    pickView.hidden = YES;
    pickViewLabel.hidden = YES;
    /*arrayOfView = [[NSMutableArray alloc] init];
    [arrayOfView addObject:@"Retirement"];
    [arrayOfView addObject:@"Tax Deduction"];
    [arrayOfView addObject:@"Child Education"];
    [arrayOfView addObject:@"Assurance"];
    [arrayOfView addObject:@"Saving"];
    
    [pickView selectRow:0 inComponent:0 animated:YES];
    pickViewLabel.text= [arrayOfView objectAtIndex:[pickView selectedRowInComponent:0]]; */
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = YES;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;{
    return 1;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    pickViewLabel.text= [arrayOfView objectAtIndex:row];
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;{
    return [arrayOfView count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;{
    return [arrayOfView objectAtIndex:row];
}



- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}

- (void)dealloc
{
    [super dealloc];
}    

@end
