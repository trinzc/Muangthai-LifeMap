//
//  FirstSavingViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 12/21/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "FirstSavingViewController.h"

@implementation FirstSavingViewController
@synthesize secondSavingViewController;
@synthesize DepositOfSavingFutureSlider,DepositOfSavingFutureLabel,DepositOfSavingFutureImg,DepositOfSavingFutureDecreaseBtn,DepositOfSavingFutureIncreaseBtn,DepositOfSavingFuture,DepositOfSavingFutureResult;
@synthesize EndOfSavingSlider,EndOfSavingLabel,EndOfSavingImg,EndOfSavingDecreaseBtn,EndOfSavingIncreaseBtn,EndOfSaving,EndOfSavingResult;
@synthesize YearOfSavingSlider,YearOfSavingLabel,YearOfSavingImg,YearOfSavingDecreaseBtn,YearOfSavingIncreaseBtn,YearOfSaving,YearOfSavingResult;
@synthesize BonusOfSavingBtn,BonusOfSaving,BonusOfSavingResult;
@synthesize backBtn,nextBtn;

//Deposit of Saving ----------------------------------------------------------------------------------
- (void)setDepositOfSavingFutureValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: DepositOfSavingFutureResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    DepositOfSavingFutureLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
    UIImage *costSpend_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *costSpend_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *costSpend_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *costSpend_4 = [UIImage imageNamed:@"income_4.png"];
    if (DepositOfSavingFutureResult <= 2000000){
        [DepositOfSavingFutureImg setImage:costSpend_1];
    }
    else {
        if (DepositOfSavingFutureResult <= 4500000){
            [DepositOfSavingFutureImg setImage:costSpend_2];
        }
        else {
            if (DepositOfSavingFutureResult <= 8000000){
                [DepositOfSavingFutureImg setImage:costSpend_3];
            } 
            else {
                [DepositOfSavingFutureImg setImage:costSpend_4];
                }
            }
        }
}

- (IBAction)DepositOfSavingFutureChange:(id)sender{
    DepositOfSavingFutureSlider.minimumValue = 5;
    DepositOfSavingFutureSlider.maximumValue = 100;
    DepositOfSavingFutureSlider = (UISlider *)sender;
    int DepositOfSavingFutureInt =(int)(DepositOfSavingFutureSlider.value + 0.5f);
    DepositOfSavingFutureResult = DepositOfSavingFutureInt*100000;
    DepositOfSavingFuture = DepositOfSavingFutureResult;
    [self setDepositOfSavingFutureValue];
}

- (IBAction)DepositOfSavingFutureDecrease:(id)sender{
    DepositOfSavingFutureSlider.minimumValue = 5;
    DepositOfSavingFutureSlider.maximumValue = 100;
    [DepositOfSavingFutureSlider setValue:DepositOfSavingFutureSlider.value-1 animated:YES];
    int DepositOfSavingFutureInt =(int)(DepositOfSavingFutureSlider.value + 0.5f);
    DepositOfSavingFutureResult = DepositOfSavingFutureInt*100000;
    DepositOfSavingFuture = DepositOfSavingFutureResult;
    [self setDepositOfSavingFutureValue];
}

- (IBAction)DepositOfSavingFutureIncrease:(id)sender{
    DepositOfSavingFutureSlider.minimumValue = 5;
    DepositOfSavingFutureSlider.maximumValue = 100;
    [DepositOfSavingFutureSlider setValue:DepositOfSavingFutureSlider.value+1 animated:YES];
    int DepositOfSavingFutureInt =(int)(DepositOfSavingFutureSlider.value + 0.5f);
    DepositOfSavingFutureResult = DepositOfSavingFutureInt*100000;
    DepositOfSavingFuture = DepositOfSavingFutureResult;
    [self setDepositOfSavingFutureValue];
}

//End of Saving ----------------------------------------------------------------------------------
- (void)setEndOfSavingValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: EndOfSavingResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    EndOfSavingLabel.text = [NSString stringWithFormat:@"%@ ปี",[numFormatter stringFromNumber:result]];
    UIImage *costSpend_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *costSpend_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *costSpend_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *costSpend_4 = [UIImage imageNamed:@"income_4.png"];
    if (EndOfSavingResult <=15){
        [EndOfSavingImg setImage:costSpend_1];
    }
    else {
        if (EndOfSavingResult <= 40){
            [EndOfSavingImg setImage:costSpend_2];
        }
        else {
            if (EndOfSavingResult <= 65){
                [EndOfSavingImg setImage:costSpend_3];
            }
                else {
                    [EndOfSavingImg setImage:costSpend_4];
                }
            }
        }
    }

- (IBAction)EndOfSavingChange:(id)sender{
    EndOfSavingSlider.minimumValue = 1;
    EndOfSavingSlider.maximumValue = 80;
    EndOfSavingSlider = (UISlider *)sender;
    int EndOfSavingInt =(int)(EndOfSavingSlider.value + 0.5f);
    EndOfSavingResult = EndOfSavingInt;
    EndOfSaving = EndOfSavingResult;
    [self setEndOfSavingValue];
}

- (IBAction)EndOfSavingDecrease:(id)sender{
    EndOfSavingSlider.minimumValue = 1;
    EndOfSavingSlider.maximumValue = 80;
    [EndOfSavingSlider setValue:EndOfSavingSlider.value-1 animated:YES];
    int EndOfSavingInt =(int)(EndOfSavingSlider.value + 0.5f);
    EndOfSavingResult = EndOfSavingInt;
    EndOfSaving = EndOfSavingResult;
    [self setEndOfSavingValue];
}
- (IBAction)EndOfSavingIncrease:(id)sender{
    EndOfSavingSlider.minimumValue = 1;
    EndOfSavingSlider.maximumValue = 80;
    [EndOfSavingSlider setValue:EndOfSavingSlider.value+1 animated:YES];
    int EndOfSavingInt =(int)(EndOfSavingSlider.value + 0.5f);
    EndOfSavingResult = EndOfSavingInt;
    EndOfSaving = EndOfSavingResult;
    [self setEndOfSavingValue];
}

//Year of Saving ----------------------------------------------------------------------------------
- (void)setYearOfSavingValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: YearOfSavingResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    YearOfSavingLabel.text = [NSString stringWithFormat:@"%@ ปี",[numFormatter stringFromNumber:result]];
    UIImage *costSpend_1 = [UIImage imageNamed:@"income_1.png"];
    UIImage *costSpend_2 = [UIImage imageNamed:@"income_2.png"];
    UIImage *costSpend_3 = [UIImage imageNamed:@"income_3.png"];
    UIImage *costSpend_4 = [UIImage imageNamed:@"income_4.png"];
    
    if (YearOfSavingResult <=15){
        [YearOfSavingImg setImage:costSpend_1];
    }
    else {
        if (YearOfSavingResult <= 40){
            [YearOfSavingImg setImage:costSpend_2];
        }
        else {
            if (YearOfSavingResult <= 65){
                [YearOfSavingImg setImage:costSpend_3];
            }
            else {
                [YearOfSavingImg setImage:costSpend_4];
            }
        }
    }
}

- (IBAction)YearOfSavingChange:(id)sender{
    YearOfSavingSlider.minimumValue = 1;
    YearOfSavingSlider.maximumValue = 80;
    YearOfSavingSlider = (UISlider *)sender;
    int YearOfSavingInt =(int)(YearOfSavingSlider.value + 0.5f);
    YearOfSavingResult = YearOfSavingInt;
    YearOfSaving = YearOfSavingResult;
    [self setYearOfSavingValue];
}

- (IBAction)YearOfSavingDecrease:(id)sender{
    YearOfSavingSlider.minimumValue = 1;
    YearOfSavingSlider.maximumValue = 80;
    [YearOfSavingSlider setValue:YearOfSavingSlider.value-1 animated:YES];
    int YearOfSavingInt =(int)(YearOfSavingSlider.value + 0.5f);
    YearOfSavingResult = YearOfSavingInt;
    YearOfSaving = YearOfSavingResult;
    [self setYearOfSavingValue];
}
- (IBAction)YearOfSavingIncrease:(id)sender{
    YearOfSavingSlider.minimumValue = 1;
    YearOfSavingSlider.maximumValue = 80;
    [YearOfSavingSlider setValue:YearOfSavingSlider.value+1 animated:YES];
    int YearOfSavingInt =(int)(YearOfSavingSlider.value + 0.5f);
    YearOfSavingResult = YearOfSavingInt;
    YearOfSaving = YearOfSavingResult;
    [self setYearOfSavingValue];
}

//Bonus Of Saving -----------------------------------------------------------------------------------
- (IBAction)BonusOfSavingBtnPressed:(id)sender{
    UIImage *YesSelect = [UIImage imageNamed:@"yes_select.png"];
    UIImage *NoSelect = [UIImage imageNamed:@"no_select.png"];
    NSString *Selected;
    if (BonusOfSavingResult == 0){
        [BonusOfSavingBtn setImage:YesSelect forState:UIControlStateNormal];
        BonusOfSaving = BonusOfSavingResult = 1;
        Selected =@"ต้องการ";
    }
    else {
        [BonusOfSavingBtn setImage:NoSelect forState:UIControlStateNormal];
        BonusOfSaving = BonusOfSavingResult = 0;
        Selected =@"ไม่ต้องการ";
    }
    NSLog(@"%@",Selected);
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)backBtnPressed:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)nextBtnPressed:(id)sender{
    secondSavingViewController = [[SecondSavingViewController alloc]initWithNibName:@"SecondSavingViewController" bundle:nil];
    [self.navigationController pushViewController:secondSavingViewController animated:YES];
    [secondSavingViewController release];
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
    
    DepositOfSavingFutureSlider.backgroundColor = [UIColor clearColor];
    [DepositOfSavingFutureSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [DepositOfSavingFutureSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [DepositOfSavingFutureSlider setThumbImage: center forState: UIControlStateNormal];
    [DepositOfSavingFutureSlider release];
    
    EndOfSavingSlider.backgroundColor = [UIColor clearColor];
    [EndOfSavingSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [EndOfSavingSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [EndOfSavingSlider setThumbImage: center forState: UIControlStateNormal];
    [EndOfSavingSlider release];
    
    YearOfSavingSlider.backgroundColor = [UIColor clearColor];
    [YearOfSavingSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [YearOfSavingSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [YearOfSavingSlider setThumbImage: center forState: UIControlStateNormal];
    [YearOfSavingSlider release];
    
    UIImage *costSpend_1 = [UIImage imageNamed:@"income_1.png"];
    [DepositOfSavingFutureImg setImage:costSpend_1];
    [DepositOfSavingFutureLabel setText:@"500,000 บาท"];
    [EndOfSavingImg setImage:costSpend_1];
    [EndOfSavingLabel setText:@"1 ปี"];
    [YearOfSavingImg setImage:costSpend_1];
    [YearOfSavingLabel setText:@"1 ปี"];
    
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
