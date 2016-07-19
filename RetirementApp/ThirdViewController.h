//
//  ThirdViewController.h
//  RetirementApp
//
//  Created by Jimson Vedua on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *estimatedRetirementYearLabel;
@property (weak, nonatomic) IBOutlet UITextField *retirementYearTextfield;


@property (weak, nonatomic) IBOutlet UILabel *totalSavingsLabel;
@property (weak, nonatomic) IBOutlet UITextField *amountTotalSavingsTextfield;



@property (weak, nonatomic) IBOutlet UILabel *dollarTotalExpensesPlaceholder
;



@property (weak, nonatomic) IBOutlet UILabel *dollarTotalIncomePlaceholder;


@property (weak, nonatomic) IBOutlet UILabel *interestRateLabel;
@property (weak, nonatomic) IBOutlet UITextField *interestRateTextfield;


@property (weak, nonatomic) IBOutlet UILabel *totalMoneyRequiredInRetirementLabel;
@property (weak, nonatomic) IBOutlet UITextField *amountMoneyRequired;


@end
