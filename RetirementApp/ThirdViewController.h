//
//  ThirdViewController.h
//  RetirementApp
//
//  Created by Jimson Vedua on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ThirdViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *estimatedRetirementYearLabel;
@property (weak, nonatomic) IBOutlet UITextField *retirementYearTextfield;


@property (weak, nonatomic) IBOutlet UILabel *totalSavingsLabel;
@property (weak, nonatomic) IBOutlet UITextField *amountTotalSavingsTextfield;


@property (weak, nonatomic) IBOutlet UILabel *dollarTotalExpensesPlaceholder
;


@property (weak, nonatomic) IBOutlet UILabel *dollarTotalIncomePlaceholder;


@property (weak, nonatomic) IBOutlet UILabel *interestRateLabel;
@property (weak, nonatomic) IBOutlet UITextField *interestRateTextfield;


@property (weak, nonatomic) IBOutlet UILabel *estimatedRetirementMoneyLabel;
@property (weak, nonatomic) IBOutlet UILabel *dollarEstimatedRetirementMoneyLabel;

@property (weak, nonatomic) IBOutlet UILabel *willLastYearsLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearsNoContribLabel;

@property (weak, nonatomic) IBOutlet UILabel *withMonthlyContributionLabel;
@property (weak, nonatomic) IBOutlet UILabel *dollarEstimateWithContributionLabel;


@property (weak, nonatomic) IBOutlet UILabel *willLastInYearsLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearsEstimateLabel;


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;




@end
