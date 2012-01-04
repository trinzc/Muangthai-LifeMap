//
//  PersonalViewController.m
//  Muangthai
//
//  Created by Charuwat Insiri on 11/16/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import "PersonalViewController.h"

@implementation PersonalViewController
@synthesize nameField,lnameField,ageSlider,ageLabel,genderSelect,famSizeSlider,famSizeLabel,phoneField,emailField,yearSalarySlider,yearSalaryLabel,otherSalarySlider,otherSalaryLabel,nextBtn,Delegate,Name,Lastname,Age,Gender,FamilySize,Phone,Email,yearSalary,otherSalary,getedPage;

-(BOOL)disablesAutomaticKeyboardDismissal{
    return NO;
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

#pragma mark - PAge Action

- (IBAction)nameDoneTyping:(id)sender{
    [sender resignFirstResponder];
    Name = nameField.text;
    NSLog(@"name: %@",Name);
}

- (IBAction)lnameDoneTyping:(id)sender{
    [sender resignFirstResponder];
    Lastname = lnameField.text;
    NSLog(@"last name: %@",Lastname);
}

- (IBAction)phoneDoneTyping:(id)sender{
    [sender resignFirstResponder];
    Phone = phoneField.text;
    NSLog(@"phone: %@",Phone);
}

- (IBAction)emailDoneTyping:(id)sender{
    [sender resignFirstResponder];
    Email = emailField.text;
    NSLog(@"email: %@",Email);
}

- (IBAction)ageChanged:(id)sender{
    ageSlider = (UISlider *)sender;
    int progressAsInt =(int)(ageSlider.value + 0.5f);
    NSString *ageChange =[[NSString alloc]initWithFormat:@"%d",progressAsInt];
    if ([ageChange isEqualToString:@"1"]){
        ageLabel.text = @"0";
    }
    else if ([ageChange isEqualToString:@"2"]){
        ageLabel.text = @"20";
    }
    else if ([ageChange isEqualToString:@"3"]){
        ageLabel.text = @"40";
    }
    else {
        ageLabel.text = @"60+";
    }
    Age = ageLabel.text;
    NSLog(@"age : %@", Age);
}

- (IBAction)genderChanged:(id)sender{
    switch (self.genderSelect.selectedSegmentIndex){
        case 0:
            Gender = @"ชาย";
            NSLog(@"gender : male");
            break;
        case 1:
            Gender = @"หญิง";
            NSLog(@"gender : female");
            break;
            
        default:
            Gender = @"ชาย";
            NSLog(@"gender : male");
            break;
    }
}

- (IBAction)familySizeChanged:(id)sender{
    famSizeSlider = (UISlider *)sender;
    int progressAsInt =(int)(famSizeSlider.value + 0.5f);
    NSString *famSizeChange =[[NSString alloc]initWithFormat:@"%d",progressAsInt];
    if ([famSizeChange isEqualToString:@"1"]){
        famSizeLabel.text = @"1";
    }
    else if ([famSizeChange isEqualToString:@"2"]){
        famSizeLabel.text = @"2";
    }
    else if ([famSizeChange isEqualToString:@"3"]){
        famSizeLabel.text = @"3";
    }
    else {
        famSizeLabel.text = @"4+";
    }
    FamilySize = famSizeLabel.text;
    NSLog(@"family : %@",FamilySize); 
}

- (IBAction)yearSalaryChanged:(id)sender{
    yearSalarySlider = (UISlider *)sender;
    int progressAsInt =(int)(yearSalarySlider.value + 0.5f);
    NSString *yearSalaryChange =[[NSString alloc]initWithFormat:@"%d",progressAsInt];
    if ([yearSalaryChange isEqualToString:@"1"]){
        yearSalaryLabel.text = @"0";
    }
    else if ([yearSalaryChange isEqualToString:@"2"]){
        yearSalaryLabel.text = @"50,000";
    }
    else if ([yearSalaryChange isEqualToString:@"3"]){
        yearSalaryLabel.text = @"100,000";
    }
    else if ([yearSalaryChange isEqualToString:@"4"]){
        yearSalaryLabel.text = @"150,000";
    }
    else {
        yearSalaryLabel.text = @"200,000";
    }
    yearSalary = yearSalaryLabel.text;
    NSLog(@"salary/year : %@", yearSalary);
}

- (IBAction)otherSalaryChanged:(id)sender{
    otherSalarySlider = (UISlider *)sender;
    int progressAsInt =(int)(otherSalarySlider.value + 0.5f);
    NSString *otherSalaryChange =[[NSString alloc]initWithFormat:@"%d",progressAsInt];
    if ([otherSalaryChange isEqualToString:@"1"]){
        otherSalaryLabel.text = @"0";
    }
    else if ([otherSalaryChange isEqualToString:@"2"]){
        otherSalaryLabel.text = @"50,000";
    }
    else if ([otherSalaryChange isEqualToString:@"3"]){
        otherSalaryLabel.text = @"100,000";
    }
    else if ([otherSalaryChange isEqualToString:@"4"]){
        otherSalaryLabel.text = @"150,000";
    }
    else {
        otherSalaryLabel.text = @"200,000";
    }
    otherSalary = otherSalaryLabel.text;
    NSLog(@"other salary : %@", otherSalary);
}

- (IBAction)nextBtnPressed:(id)sender{
    Delegate = (MuangthaiAppDelegate *)[UIApplication sharedApplication].delegate;
    NSLog(@"Next Pressed");
    //[Delegate setName:Name setLname:Lastname setAge:Age setGender:Gender setFamSize:FamilySize setPhoneNum:Phone setEmail:Email setYearSalary:yearSalary setOtherSalary:otherSalary];
    //[Delegate.window addSubview:Delegate.pageControlViewController.view];
    
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    UIImage *minImage = [UIImage imageNamed: @"min.png"];
    UIImage *maxImage = [UIImage imageNamed: @"max.png"];
    UIImage *center = [UIImage imageNamed: @"SB_button.png"];
    
    minImage = [minImage stretchableImageWithLeftCapWidth: 10.0 topCapHeight: 0.5];
    maxImage = [maxImage stretchableImageWithLeftCapWidth: 10.0 topCapHeight: 0.5];
    
    ageLabel.text = @"0";
    ageSlider.backgroundColor = [UIColor clearColor];
    [ageSlider setMinimumTrackImage: minImage forState: UIControlStateNormal];
    [ageSlider setMaximumTrackImage: maxImage forState: UIControlStateNormal];
    [ageSlider setThumbImage: center forState: UIControlStateNormal];
    [ageSlider release];
    
    famSizeLabel.text = @"1";
    famSizeSlider.backgroundColor = [UIColor clearColor];
    [famSizeSlider setMinimumTrackImage: minImage forState: UIControlStateNormal];
    [famSizeSlider setMaximumTrackImage: maxImage forState: UIControlStateNormal];
    [famSizeSlider setThumbImage: center forState: UIControlStateNormal];
    [famSizeSlider release];
    
    yearSalaryLabel.text = @"0";
    yearSalarySlider.backgroundColor = [UIColor clearColor];
    [yearSalarySlider setMinimumTrackImage: minImage forState: UIControlStateNormal];
    [yearSalarySlider setMaximumTrackImage: maxImage forState: UIControlStateNormal];
    [yearSalarySlider setThumbImage: center forState: UIControlStateNormal];
    [yearSalarySlider release];
    
    otherSalaryLabel.text = @"0";
    otherSalarySlider.backgroundColor = [UIColor clearColor];
    [otherSalarySlider setMinimumTrackImage: minImage forState: UIControlStateNormal];
    [otherSalarySlider setMaximumTrackImage: maxImage forState: UIControlStateNormal];
    [otherSalarySlider setThumbImage: center forState: UIControlStateNormal];
    [otherSalarySlider release];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.nameField = nil;
    self.lnameField = nil;
    self.ageLabel = nil;
    self.ageSlider = nil;
    self.genderSelect = nil;
    self.famSizeSlider = nil;
    self.famSizeLabel = nil;
    self.phoneField = nil;
    self.emailField = nil;
    self.yearSalarySlider = nil;
    self.yearSalaryLabel = nil;
    self.otherSalarySlider = nil;
    self.otherSalaryLabel = nil;
    self.Name = nil;
    self.Lastname = nil;
    self.Age = nil;
    self.Gender = nil;
    self.FamilySize = nil;
    self.Phone = nil;
    self.Email = nil;
    self.yearSalary = nil;
    self.otherSalary = nil;
    self.Delegate = nil;
}

- (void)dealloc{
    [nameField release];
    [lnameField release];
    [ageLabel release];
    [ageSlider release];
    [genderSelect release];
    [famSizeSlider release];
    [famSizeLabel release];
    [phoneField release];
    [emailField release];
    [yearSalarySlider release];
    [yearSalaryLabel release];
    [otherSalarySlider release];
    [otherSalaryLabel release];
    [Name release];
    [Lastname release];
    [Age release];
    [Gender release];
    [FamilySize release];
    [Phone release];
    [Email release];
    [yearSalary release];
    [otherSalary release];
    [Delegate release];
    [super dealloc];
}

/*- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}*/

@end
