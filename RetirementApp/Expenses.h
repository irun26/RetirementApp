//
//  Expenses.h
//  RetirementApp
//
//  Created by Jimson Vedua on 7/14/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Expenses : NSObject


@property float mortgage;
@property float car;
@property float food;
@property float totalExpenses;

- (float) calculateTotalExpense:(float) mortgage andCar:(float) car andFood:(float) food;



@end
