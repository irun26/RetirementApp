//
//  User.h
//  RetirementApp
//
//  Created by Jimson Vedua on 7/14/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Expenses.h"


@interface User : NSObject

@property int yearOfRetirement;
@property float totalSavings;
@property float totalExpenses;
@property float totalIncome;
@property float interestRate;
@property float totalMoneyRequired;
//@property (strong, nonatomic) Expenses *userExpenses;

- (int)getTheCurrentMonth;
- (int)getTheCurrentYear;

@end
