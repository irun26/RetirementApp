//
//  FirstViewController.h
//  RetirementApp
//
//  Created by Jimson Vedua on 7/12/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *expensesLabel;

@property (weak, nonatomic) IBOutlet UILabel *mortgageLabel;
@property (weak, nonatomic) IBOutlet UITextField *mortgageTextfield;


@property (weak, nonatomic) IBOutlet UILabel *carLabel;
@property (weak, nonatomic) IBOutlet UITextField *carTextfield;

@property (weak, nonatomic) IBOutlet UILabel *foodLabel;
@property (weak, nonatomic) IBOutlet UITextField *foodTextfield;


@property (weak, nonatomic) IBOutlet UILabel *expensesTotalLabel;
@property (weak, nonatomic) IBOutlet UITextField *dollarTotalExpensesLabel;




@end
