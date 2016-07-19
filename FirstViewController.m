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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)submitButton:(id)sender {
    expense = [[Expenses alloc] init];
    
    expense.mortgage = [_mortgageTextfield.text floatValue];
    expense.car = [_carTextfield.text floatValue];
    expense.food = [_foodTextfield.text floatValue];

    expense.totalExpenses = expense.mortgage + expense.car + expense.food;
    
    NSString *str = [NSString stringWithFormat:@"%.2f", expense.totalExpenses];
    
    _dollarTotalExpensesLabel.text = str;
    
    NSLog(@"Mortgage = $%.2f", expense.mortgage);
    NSLog(@"Car = $%.2f", expense.car);
    NSLog(@"Food = $%.2f", expense.food);
    NSLog(@"Total Expenses = $%.2f", expense.totalExpenses);
    
//    NSLog (@"Expense Submit Button Pressed");
    
}
@end
