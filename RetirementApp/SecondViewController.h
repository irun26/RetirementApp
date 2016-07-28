//
//  SecondViewController.h
//  RetirementApp
//
//  Created by Jimson Vedua on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *incomeLabel;

@property (weak, nonatomic) IBOutlet UILabel *mainIncombeLabel;

@property (weak, nonatomic) IBOutlet UITextField *mainIncomeTextfield;



@property (weak, nonatomic) IBOutlet UILabel *spouseIncomeLabel;

@property (weak, nonatomic) IBOutlet UITextField *spouseIncomeTextfield;



@property (weak, nonatomic) IBOutlet UILabel *otherIncomeLabel;

@property (weak, nonatomic) IBOutlet UITextField *otherIncomeTextfield;



@property (weak, nonatomic) IBOutlet UILabel *totalIncomeLabel;

@property (weak, nonatomic) IBOutlet UILabel *dollarTotalIncomeLabel;


@property (weak, nonatomic) NSString *passedIncomeString;





@end
