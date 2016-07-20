//
//  ThirdViewController.m
//  RetirementApp
//
//  Created by Jimson Vedua on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ThirdViewController.h"
#import "SecondViewController.h"
#import "FirstViewController.h"
#import "User.h"

@interface ThirdViewController ()

@end

User *user;

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UIView * txt in self.view.subviews){
        if ([txt isKindOfClass:[UITextField class]] && [txt isFirstResponder]) {
            [txt resignFirstResponder];
        }
    }
}


- (IBAction)enterExpensesButton:(id)sender {
}

- (IBAction)enterIncomeButton:(id)sender {
}

- (IBAction)calculateButton:(id)sender {
    
    user = [[User alloc] init];
    
    user.yearOfRetirement = [_retirementYearTextfield.text intValue];
    user.totalSavings = [_amountTotalSavingsTextfield.text floatValue];
    user.interestRate = [_interestRateTextfield.text floatValue];
    
    

    int totalMonthsBeforeRetirement = ((user.yearOfRetirement - 2016)*12)-7;
//    float monthlySavingsToAdd = user.totalIncome - user.totalExpenses;
    float compoundingInterestRate = ((user.interestRate)/100)/12;

    
    float futureValue = user.totalSavings * pow((1.0 + compoundingInterestRate), totalMonthsBeforeRetirement);
    
    NSLog(@"future value %.2f", futureValue);
    
    NSString *future = [NSString stringWithFormat:@"$ %.2f",futureValue];
    
    _dollarEstimatedRetirementMoneyLabel.text = future;
    
    NSLog(@"year of retirement %i", user.yearOfRetirement);
    NSLog(@"total savings %.2f", user.totalSavings);
    NSLog(@"interest rate %.2f", user.interestRate);
    
    NSLog(@"Calculate Button Pressed");
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//
//    FirstViewController *destVC = [segue destinationViewController];
//    
//}

-(IBAction)unwindForSegue:(UIStoryboardSegue *)unwindSegue{

    FirstViewController *sourceVC = [unwindSegue sourceViewController];
   user.totalExpenses = [sourceVC.dollarTotalExpensesLabel.text floatValue];
    
    _dollarTotalExpensesPlaceholder.text = sourceVC.dollarTotalExpensesLabel.text;
    
    NSLog(@"user.totalExpenses float value %.2f \n", user.totalExpenses);
    NSLog(@"user.totalExpenses float value %.2f \n", [sourceVC.dollarTotalExpensesLabel.text floatValue]);
    NSLog(@"dollarTotalExpensesPlaceholder.text %@ \n", sourceVC.dollarTotalExpensesLabel.text);

}
-(IBAction)unwindForSegue2:(UIStoryboardSegue *)unwindSegue2{
    
    SecondViewController *sourceVC2 = [unwindSegue2 sourceViewController];
    user.totalIncome = [sourceVC2.dollarTotalIncomeLabel.text floatValue];
    
    _dollarTotalIncomePlaceholder.text = sourceVC2.dollarTotalIncomeLabel.text;
    
    NSLog(@"user.totalIncome float value %.2f \n", user.totalIncome);
    NSLog(@"user.totalIncome float value %.2f \n", [sourceVC2.dollarTotalIncomeLabel.text floatValue]);
    NSLog(@"dollarTotalIncomePlaceholder.text %@ \n", sourceVC2.dollarTotalIncomeLabel.text);
    
}


- (IBAction)unwindFromAdvisorViewController:(UIStoryboardSegue *)unwindFromAdvisorController {
}


- (IBAction)advisorButton:(id)sender {
    NSLog(@"Advisor Button Pressed");
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}


@end
