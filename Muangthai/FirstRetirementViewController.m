//
//  FirstRetirementViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 11/24/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "FirstRetirementViewController.h"

@implementation FirstRetirementViewController
@synthesize secondRetirementViewController,thirdRetirementViewController;
@synthesize ageRangeSlider,AgeBeforeRetireLabel,minAgeLabel,maxAgeLabel,minAge,maxAge,ageRange,CurrentAgeLabel,RetireAgeLabel,CurrentAgeTitleLabel,RetireAgeTitleLabel,CurrentAge,CurrentAgeResult,RetireAge,RetireAgeResult,AgeBeforeRetire,AgeBeforeRetireResult;

@synthesize AgeAfterRetireSlider,AgeAfterRetireLabel,AgeAfterRetireDecreaseBtn,AgeAfterRetireIncreaseBtn,AgeAfterRetire,AgeAfterRetireResult;
@synthesize MoneyUseAfterRetireSlider,MoneyUseAfterRetireLabel,MoneyUseafterRetireDecreaseBtn,MoneyUseAfterRetireIncreaseBtn,MoneyUseAfterRetire,MoneyUseAfterRetireResult;

@synthesize SummaryResult;
@synthesize NextBtn,BackBtn;

//Age Retire ---------------------------------------------------------------------------------------
- (void)setAgeAfterRetireValue{
    AgeAfterRetireLabel.text = [NSString stringWithFormat:@"%d ปี",AgeAfterRetireResult];
}

- (IBAction)AgeAfterRetireChange:(id)sender{
    AgeAfterRetireSlider.minimumValue = RetireAgeResult+1;
    AgeAfterRetireSlider.maximumValue = 99;
    AgeAfterRetireSlider = (UISlider *)sender;
    AgeAfterRetireResult =(int)(AgeAfterRetireSlider.value + 0.5f);
    AgeAfterRetire = AgeAfterRetireResult;
    [self setAgeAfterRetireValue];
}

- (IBAction)AgeAfterRetireDecrease:(id)sender{
    AgeAfterRetireSlider.minimumValue = RetireAgeResult+1;
    AgeAfterRetireSlider.maximumValue = 99;
    [AgeAfterRetireSlider setValue:AgeAfterRetireSlider.value-1 animated:YES];
    AgeAfterRetireResult =(int)(AgeAfterRetireSlider.value + 0.5f);
    AgeAfterRetire = AgeAfterRetireResult;
    [self setAgeAfterRetireValue];
}

- (IBAction)AgeAfterRetireIncrease:(id)sender{
    AgeAfterRetireSlider.minimumValue = RetireAgeResult+1;
    AgeAfterRetireSlider.maximumValue = 99;
    [AgeAfterRetireSlider setValue:AgeAfterRetireSlider.value+1 animated:YES];
    AgeAfterRetireResult =(int)(AgeAfterRetireSlider.value + 0.5f);
    AgeAfterRetire = AgeAfterRetireResult;
    [self setAgeAfterRetireValue];
}

//Money Use -------------------------------------------------------------------------------------
- (void)setMoneyUseAfterRetireValue{
    NSNumberFormatter *numFormatter = [[NSNumberFormatter alloc] init];
    NSNumber *result = [[NSNumber alloc] initWithInt: MoneyUseAfterRetireResult];
    [numFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
    MoneyUseAfterRetireLabel.text = [NSString stringWithFormat:@"%@ บาท",[numFormatter stringFromNumber:result]];
}

- (IBAction)MoneyUseAfterRetireChange:(id)sender{
    MoneyUseAfterRetireSlider.minimumValue = 1;
    MoneyUseAfterRetireSlider.maximumValue = 40;
    MoneyUseAfterRetireSlider = (UISlider *)sender;
    int MoneyUseAfterRetireInt =(int)(MoneyUseAfterRetireSlider.value + 0.5f);
    MoneyUseAfterRetireResult = MoneyUseAfterRetireInt*5000;
    MoneyUseAfterRetire = MoneyUseAfterRetireResult;
    [self setMoneyUseAfterRetireValue];
}

- (IBAction)MoneyUseAfterRetireDecrease:(id)sender{
    MoneyUseAfterRetireSlider.minimumValue = 1;
    MoneyUseAfterRetireSlider.maximumValue = 40;
    [MoneyUseAfterRetireSlider setValue:MoneyUseAfterRetireSlider.value-1 animated:YES];
    int MoneyUseAfterRetireInt =(int)(MoneyUseAfterRetireSlider.value + 0.5f);
    MoneyUseAfterRetireResult = MoneyUseAfterRetireInt*5000;
    MoneyUseAfterRetire = MoneyUseAfterRetireResult;
    [self setMoneyUseAfterRetireValue];
}

- (IBAction)MoneyUseAfterRetireIncrease:(id)sender{
    MoneyUseAfterRetireSlider.minimumValue = 1;
    MoneyUseAfterRetireSlider.maximumValue = 40;
    [MoneyUseAfterRetireSlider setValue:MoneyUseAfterRetireSlider.value+1 animated:YES];
    int MoneyUseAfterRetireInt =(int)(MoneyUseAfterRetireSlider.value + 0.5f);
   MoneyUseAfterRetireResult = MoneyUseAfterRetireInt*5000;
   MoneyUseAfterRetire = MoneyUseAfterRetireResult;
    [self setMoneyUseAfterRetireValue];
}

//Age Before Retire -------------------------------------------------------------------------------
- (void)valueChangedForDoubleSlider:(DoubleSlider *)slider
{
    
    minAge = [NSString stringWithFormat:@"%d", slider.minSelectedValue];
	maxAge = [NSString stringWithFormat:@"%d", slider.maxSelectedValue];
    CurrentAgeLabel.text = minAge;
    RetireAgeLabel.text = maxAge;
    CurrentAgeTitleLabel.center = CGPointMake(slider.minHandle.center.x+105, 414);;
    RetireAgeTitleLabel.center = CGPointMake(slider.maxHandle.center.x+105, 414);
    CurrentAgeLabel.center = CGPointMake(slider.minHandle.center.x+105, 335);
    RetireAgeLabel.center = CGPointMake(slider.maxHandle.center.x+105, 335);
    
    minAgeLabel.text = [NSString stringWithFormat:@"1 ปี"];
    maxAgeLabel.text = [NSString stringWithFormat:@"80 ปี"];
    CurrentAgeResult = slider.minSelectedValue;
    CurrentAge = CurrentAgeResult;
    RetireAgeResult = slider.maxSelectedValue;
    RetireAge = RetireAgeResult;
    
    AgeBeforeRetireResult = RetireAgeResult-CurrentAgeResult;
    AgeBeforeRetire = AgeBeforeRetireResult;
    AgeBeforeRetireLabel.text = [NSString stringWithFormat:@"%d ปี",AgeBeforeRetireResult];
    AgeAfterRetireLabel.text = [NSString stringWithFormat:@"%d ปี",RetireAgeResult+1];
    AgeAfterRetireResult = RetireAgeResult+1;
    AgeAfterRetire = AgeAfterRetireResult;
    [AgeAfterRetireSlider setValue:1.5 animated:YES];
}

//Next & Back --------------------------------------------------------------------------------------
- (IBAction)nextBtnPressed:(id)sender{
    secondRetirementViewController = [[SecondRetirementViewController alloc]initWithNibName:@"SecondRetirementViewController" bundle:nil];
    [secondRetirementViewController getCurrentAge:CurrentAge getRetireAge:RetireAge getAgeBeforeRetire:AgeBeforeRetire getAgeAfterRetire:AgeAfterRetire getMoneyUseAfterRetire:MoneyUseAfterRetire];

    //[secondRetirementViewController getRetireAge:RetireAge getSpend:MoneyUseAfterRetire getYearAfterRetire:AgeAfterRetire];
    
    [self.navigationController pushViewController:secondRetirementViewController animated:YES];
    [secondRetirementViewController release];
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
    UIImage *sliderHilighted = [UIImage imageNamed: @"min.png"];
    UIImage *sliderBackground = [UIImage imageNamed: @"seekbar_slide.png"];
    UIImage *center = [UIImage imageNamed: @"seekbar_button.png"];
    
    sliderHilighted = [sliderHilighted stretchableImageWithLeftCapWidth: 10.0 topCapHeight: 0.5];
    sliderBackground = [sliderBackground stretchableImageWithLeftCapWidth: 10.0 topCapHeight: 0.5];
    
    AgeAfterRetireSlider.backgroundColor = [UIColor clearColor];
    [AgeAfterRetireSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [AgeAfterRetireSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [AgeAfterRetireSlider setThumbImage: center forState: UIControlStateNormal];
    [AgeAfterRetireSlider release];
    
    MoneyUseAfterRetireSlider.backgroundColor = [UIColor clearColor];
    [MoneyUseAfterRetireSlider setMinimumTrackImage: sliderBackground forState: UIControlStateNormal];
    [MoneyUseAfterRetireSlider setMaximumTrackImage: sliderBackground forState: UIControlStateNormal];
    [MoneyUseAfterRetireSlider setThumbImage: center forState: UIControlStateNormal];
    [MoneyUseAfterRetireSlider release];
    
	ageRangeSlider = [[[DoubleSlider alloc] initWithFrame:CGRectMake(0., 0., 560., 40.) minValue:1 maxValue:81 barHeight:10.0] autorelease];
    
	[ageRangeSlider addTarget:self action:@selector(valueChangedForDoubleSlider:) forControlEvents:UIControlEventValueChanged];
	ageRangeSlider.center = CGPointMake(384,390);
	[self.view addSubview:ageRangeSlider];
    
    minAge = [NSString stringWithFormat:@"%d",ageRangeSlider.minSelectedValue];
	maxAge = [NSString stringWithFormat:@"%d",ageRangeSlider.maxSelectedValue];
    minAgeLabel.text = [NSString stringWithFormat:@"1 ปี"];
    maxAgeLabel.text = [NSString stringWithFormat:@"80 ปี"];
    CurrentAgeResult = ageRangeSlider.minSelectedValue;
    CurrentAge = CurrentAgeResult;
    RetireAgeResult = ageRangeSlider.maxSelectedValue;
    RetireAge = RetireAgeResult;
    CurrentAgeLabel.text = minAge;
    RetireAgeLabel.text = maxAge;
    AgeBeforeRetireResult = RetireAgeResult-CurrentAgeResult;
    AgeBeforeRetireLabel.text = [NSString stringWithFormat:@"%d ปี",AgeBeforeRetireResult];
    AgeBeforeRetire = RetireAge-CurrentAge;
    AgeAfterRetire = 61;
    MoneyUseAfterRetire = 5000;
    AgeAfterRetireLabel.text = @"61 ปี";
    MoneyUseAfterRetireLabel.text = @"5,000 บาท";
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)dealloc{
    
    [AgeBeforeRetireLabel release];
    [minAgeLabel release];
    [maxAgeLabel release];
    [CurrentAgeLabel release];
    [RetireAgeLabel release];
    [CurrentAgeTitleLabel release];
    [RetireAgeTitleLabel release];
    [AgeAfterRetireLabel release];
    [MoneyUseAfterRetireLabel release];
    [super dealloc];
}

- (void)viewDidUnload
{
    NextBtn = nil;
    BackBtn = nil;
    
    AgeBeforeRetireLabel = nil;
    minAgeLabel = nil;
    maxAgeLabel = nil;
    CurrentAgeLabel = nil;
    RetireAgeLabel = nil;
    ageRangeSlider = nil;
    CurrentAgeTitleLabel = nil;
    RetireAgeTitleLabel = nil;
    
    AgeAfterRetireSlider = nil;
    AgeAfterRetireLabel = nil;
    AgeAfterRetireIncreaseBtn = nil;
    AgeAfterRetireDecreaseBtn = nil;
    
    MoneyUseAfterRetireSlider = nil;
    MoneyUseAfterRetireLabel = nil;
    MoneyUseAfterRetireIncreaseBtn = nil;
    MoneyUseafterRetireDecreaseBtn = nil;
    
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
