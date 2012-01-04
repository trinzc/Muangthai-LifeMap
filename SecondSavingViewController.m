//
//  SecondSavingViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/21/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "SecondSavingViewController.h"

@implementation SecondSavingViewController

@synthesize DepositSavingSlider,DepositSavingLabel,DepositSavingImg,DepositSavingDecreaseBtn,DepositSavingIncreaseBtn,DepositSaving,DepositSavingResult;
@synthesize PropertySavingSlider,PropertySavingLabel,PropertySavingImg,PropertySavingDecreaseBtn,PropertySavingIncreaseBtn,PropertySaving,PropertySavingeResult;
@synthesize nextBtn,backBtn;

@synthesize DepositOfSavingFuture,EndOfSaving,YearOfSaving,BonusOfSaving;

//Deposit in Bank of Assurance --------------------------------------------------------------------

- (id)getDepositOfSavingFuture:(int)getterDepositOfSavingFuture getEndOfSaving:(int)getterEndOfSaving getYearOfSaving:(int)getterYearOfSaving getBonusOfSaving:(int)getterBonusOfSaving{
    self.DepositOfSavingFuture = getterDepositOfSavingFuture;
    self.EndOfSaving = getterEndOfSaving;
    self.YearOfSaving = getterYearOfSaving;
    self.BonusOfSaving = getterBonusOfSaving;
    return self;
}

-(void)setResultLabel{
    
}



- (void)setDepositSavingValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: DepositSavingResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    DepositSavingLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    UIImage *deposit_1 = [UIImage imageNamed:@"deposit_1.png"];
    UIImage *deposit_2 = [UIImage imageNamed:@"deposit_2.png"];
    UIImage *deposit_3 = [UIImage imageNamed:@"deposit_3.png"];
    UIImage *deposit_4 = [UIImage imageNamed:@"deposit_4.png"];
    if (DepositSavingResult == 0){
        [DepositSavingImg setImage:NULL];
    }
    else {
        if (DepositSavingResult <= 400000){
            [DepositSavingImg setImage:deposit_1];
        }
        else {
            if (DepositSavingResult <= 800000){
                [DepositSavingImg setImage:deposit_2];
            } 
            else {
                if (DepositSavingResult <= 1200000){
                    [DepositSavingImg setImage:deposit_3];
                }
                else {
                    [DepositSavingImg setImage:deposit_4];
                }
            }
        }
    }
}

- (IBAction)DepositSavingChange:(id)sender{
    DepositSavingSlider.minimumValue = 0;
    DepositSavingSlider.maximumValue = 15;
    DepositSavingSlider = (UISlider *)sender;
    int DepositSavingInt =(int)(DepositSavingSlider.value + 0.5f);
    DepositSavingResult = DepositSavingInt*100000;
    DepositSaving = DepositSavingResult;
    [self setDepositSavingValue];
}

- (IBAction)DepositSavingDecrease:(id)sender{
    DepositSavingSlider.minimumValue = 0;
    DepositSavingSlider.maximumValue = 15;
    [DepositSavingSlider setValue:DepositSavingSlider.value-1 animated:YES];
    int DepositSavingInt =(int)(DepositSavingSlider.value + 0.5f);
    DepositSavingResult = DepositSavingInt*100000;
    DepositSaving = DepositSavingResult;
    [self setDepositSavingValue];
}

- (IBAction)DepositSavingIncrease:(id)sender{
    DepositSavingSlider.minimumValue = 0;
    DepositSavingSlider.maximumValue = 15;
    [DepositSavingSlider setValue:DepositSavingSlider.value+1 animated:YES];
    int DepositSavingInt =(int)(DepositSavingSlider.value + 0.5f);
    DepositSavingResult = DepositSavingInt*100000;
    DepositSaving = DepositSavingResult;
    [self setDepositSavingValue];
}

//Property Assurance --------------------------------------------------------------------------------
- (void)setPropertySavingValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: PropertySavingeResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    PropertySavingLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    UIImage *investment_1 = [UIImage imageNamed:@"investment_1.png"];
    UIImage *investment_2 = [UIImage imageNamed:@"investment_2.png"];
    UIImage *investment_3 = [UIImage imageNamed:@"investment_3.png"];
    UIImage *investment_4 = [UIImage imageNamed:@"investment_4.png"];
    if (PropertySavingeResult == 0){
        [PropertySavingImg setImage:NULL];
    }
    else {
        if (PropertySavingeResult <= 400000){
            [PropertySavingImg setImage:investment_1];
        }
        else {
            if (PropertySavingeResult <= 800000){
                [PropertySavingImg setImage:investment_2];
            } 
            else {
                if (PropertySavingeResult <= 1200000){
                    [PropertySavingImg setImage:investment_3];
                }
                else {
                    [PropertySavingImg setImage:investment_4];
                }
            }
        }
    }
}

- (IBAction)PropertySavingChange:(id)sender{
    PropertySavingSlider.minimumValue = 0;
    PropertySavingSlider.maximumValue = 15;
    PropertySavingSlider = (UISlider *)sender;
    int PropertySavingInt =(int)(PropertySavingSlider.value + 0.5f);
    PropertySavingeResult = PropertySavingInt*100000;
    PropertySaving = PropertySavingeResult;
    [self setPropertySavingValue];
}

- (IBAction)PropertySavingDecrease:(id)sender{
    PropertySavingSlider.minimumValue = 0;
    PropertySavingSlider.maximumValue = 15;
    [PropertySavingSlider setValue:PropertySavingSlider.value-1 animated:YES];
    int PropertySavingInt =(int)(PropertySavingSlider.value + 0.5f);
    PropertySavingeResult = PropertySavingInt*100000;
    PropertySaving = PropertySavingeResult;
    [self setPropertySavingValue];
}

- (IBAction)PropertySavingIncrease:(id)sender{
    PropertySavingSlider.minimumValue = 0;
    PropertySavingSlider.maximumValue = 15;
    [PropertySavingSlider setValue:PropertySavingSlider.value+1 animated:YES];
    int PropertySavingInt =(int)(PropertySavingSlider.value + 0.5f);
    PropertySavingeResult = PropertySavingInt*100000;
    PropertySaving = PropertySavingeResult;
    [self setPropertySavingValue];
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)nextBtnPressed:(id)sender{
    
}

- (IBAction)backBtnPressed:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    UIImage *sliderBackground = [UIImage imageNamed: @"seekbar_slide.png"];
    UIImage *center = [UIImage imageNamed: @"seekbar_button.png"];
    
    DepositSavingSlider.backgroundColor = [UIColor clearColor];
    [DepositSavingSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [DepositSavingSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [DepositSavingSlider setThumbImage: center forState: UIControlStateNormal];
    [DepositSavingSlider release];
    
    PropertySavingSlider.backgroundColor = [UIColor clearColor];
    [PropertySavingSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [PropertySavingSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [PropertySavingSlider setThumbImage: center forState: UIControlStateNormal];
    [PropertySavingSlider release];
    
    [DepositSavingLabel setText:@"0 บาท"];
    [PropertySavingLabel setText:@"0 บาท"];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
