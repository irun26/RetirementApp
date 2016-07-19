//
//  SecondViewController.m
//  RetirementApp
//
//  Created by Jimson Vedua on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "SecondViewController.h"
#import "Income.h"

@interface SecondViewController ()

@end


Income *income;

@implementation SecondViewController

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
    income = [[Income alloc] init];
    
    income.mainIncome = [_mainIncomeTextfield.text floatValue];
    income.spouseIncome = [_spouseIncomeTextfield.text floatValue];
    income.otherIncome = [_otherIncomeTextfield.text floatValue];
    
    income.totalIncome = income.mainIncome + income.spouseIncome + income.otherIncome;
    
    NSString *str = [NSString stringWithFormat:@"%.2f", income.totalIncome];
    
    _dollarTotalIncomeLabel.text = str;
    
    
    
    
    NSLog(@"Main Income = $%.2f", income.mainIncome);
    NSLog(@"Spouse Income = $%.2f", income.spouseIncome);
    NSLog(@"Other Income = $%.2f", income.otherIncome);
    NSLog(@"Total Income = $%.2f", income.totalIncome);
    
  
    
    
    
    
    
    
    
    
    
//    NSLog(@"Income Submit Button Pressed");
    
    
    
    
    
}

@end
