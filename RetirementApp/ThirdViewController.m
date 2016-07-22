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
#import "Expenses.h"


@interface ThirdViewController ()

@end

User *user;


@implementation ThirdViewController



- (void)viewDidLoad {
    [super viewDidLoad];
  
    user = [[User alloc] init];
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
    
    
    
    user.yearOfRetirement = [_retirementYearTextfield.text intValue];
    user.totalSavings = [_amountTotalSavingsTextfield.text floatValue];
    user.interestRate = [_interestRateTextfield.text floatValue];
    
    int totalMonthsBeforeRetirement = ((user.yearOfRetirement - [user getTheCurrentYear])*12)-[user getTheCurrentMonth];
    
//    float monthlySavingsToAdd = user.totalIncome - user.totalExpenses;
    float compoundingInterestRate = ((user.interestRate)/100)/12;

    
    float futureValue = user.totalSavings * pow((1.0 + compoundingInterestRate), totalMonthsBeforeRetirement);
    
    NSLog(@"future value %.2f", futureValue);
    
    NSString *futureValueString = [NSString stringWithFormat:@"$ %.2f",futureValue];
    
    _dollarEstimatedRetirementMoneyLabel.text = futureValueString;
    
    float taxes = 0.30;
    float m = (futureValue - (futureValue * taxes))/(user.totalExpenses*12);
    _yearsNoContribLabel.text = [NSString stringWithFormat:@"%.0f",m];
    
    
    
    float difference = user.totalIncome - user.totalExpenses;
    NSLog(@"difference $ %.2f", difference);
    
    float futureValueWithContrib = futureValue + difference * ((pow((1.0 + compoundingInterestRate), totalMonthsBeforeRetirement) - 1)/(compoundingInterestRate));
    
    NSString *futureValueWithContribString = [NSString stringWithFormat:@"$ %.2f",futureValueWithContrib];
    
    NSLog(@"future value with Contrib $ %.2f", futureValueWithContrib);
    _dollarEstimateWithContributionLabel.text = futureValueWithContribString;
    
    
    float n = (futureValueWithContrib - (futureValueWithContrib * taxes))/(user.totalExpenses*12);
    
//    float n = 1 / ( 12* log( 1 + (user.interestRate/12 ) ) );
    
    _yearsEstimateLabel.text = [NSString stringWithFormat:@"%.0f", n];
    
    NSLog(@" n value %.0f", n);
    
    
    
    
    
 
//    Use these NSLog lines to test user inputs.
//    
//    NSLog(@"year of retirement %i", user.yearOfRetirement);
//    NSLog(@"total savings %.2f", user.totalSavings);
//    NSLog(@"interest rate %.2f", user.interestRate);
//    
//    NSLog(@"Calculate Button Pressed");
}

-(IBAction)unwindForSegue:(UIStoryboardSegue *)unwindSegue{

    FirstViewController *sourceVC = [unwindSegue sourceViewController];
    
    
    NSString *str = sourceVC.dollarTotalExpensesLabel.text;

    _dollarTotalExpensesPlaceholder.text = str;
    
    //    NSLog(@"dolar %@", sourceVC.dollarTotalExpensesLabel.text);
    
//    float totalExpenseFloatValue = [sourceVC.dollarTotalExpensesLabel.text floatValue];
//    NSLog(@"TotalExpenseFloat %f", totalExpenseFloatValue);

    user.totalExpenses = [sourceVC.passedExpensesString floatValue];
    NSLog(@"user.totalExpenses float value %.2f \n", user.totalExpenses);
    
    
//    NSLog(@"sourceVC.dollarTotalExpensesLabel float value %.2f \n", [sourceVC.dollarTotalExpensesLabel.text floatValue]);
    

}
-(IBAction)unwindForSegue2:(UIStoryboardSegue *)unwindSegue2{
    
    SecondViewController *sourceVC2 = [unwindSegue2 sourceViewController];
    
    
    _dollarTotalIncomePlaceholder.text = sourceVC2.dollarTotalIncomeLabel.text;
    
    
    user.totalIncome = [sourceVC2.passedIncomeString floatValue];
    
    NSLog(@"user.totalIncome float value %.2f \n", user.totalIncome);
//    NSLog(@"user.totalIncome float value %.2f \n", [sourceVC2.dollarTotalIncomeLabel.text floatValue]);
//    NSLog(@"dollarTotalIncomePlaceholder.text %@ \n", sourceVC2.dollarTotalIncomeLabel.text);
    
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
