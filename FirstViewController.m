//
//  FirstViewController.m
//  RetirementApp
//
//  Created by Jimson Vedua on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "FirstViewController.h"
#import "ThirdViewController.h"
#import "Expenses.h"




@interface FirstViewController ()


@end

Expenses *expense;


@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (IBAction)submitButton:(id)sender {
    expense = [[Expenses alloc] init];
    
    expense.mortgage = [_mortgageTextfield.text floatValue];
    expense.car = [_carTextfield.text floatValue];
    expense.food = [_foodTextfield.text floatValue];
    expense.utilities = [_utilitiesTextfield.text floatValue];
    expense.insurance = [_insuranceTextfield.text floatValue];
    expense.otherExpenses = [_otherExpensesTextfield.text floatValue];

    expense.totalExpenses = expense.mortgage + expense.car + expense.food + expense.utilities + expense.insurance + expense.otherExpenses;
    
    NSString *str = [NSString stringWithFormat:@"$ %.2f", expense.totalExpenses];
    _dollarTotalExpensesLabel.text = str;
    _passedExpensesString = [NSString stringWithFormat:@"%.2f", expense.totalExpenses];
    
//    NSLog(@"Mortgage = $%.2f", expense.mortgage);
//    NSLog(@"Car = $%.2f", expense.car);
//    NSLog(@"Food = $%.2f", expense.food);
    NSLog(@"From First View Controller Total Expenses = $%.2f", expense.totalExpenses);
    
//    NSLog (@"Expense Submit Button Pressed");
}

@end
