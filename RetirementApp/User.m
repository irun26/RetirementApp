//
//  User.m
//  RetirementApp
//
//  Created by Jimson Vedua on 7/14/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "User.h"

@implementation User


- (int)getTheCurrentYear{
    //This method gets the current year and supply it to the Future Value formula.
    NSDate *date = [NSDate date];
    NSCalendar *gregorian = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [gregorian components:(NSCalendarUnitDay|NSCalendarUnitMonth|NSCalendarUnitYear) fromDate:date];
    NSInteger currentYearNSInt = [dateComponents year];
    int currentYear = (int) currentYearNSInt;  //Convert NSInteger to Int.
    return currentYear;
}


- (int)getTheCurrentMonth {
    //This method gets the current month and supply it to the Future Value formula.  The number of months in the year is taken out of the monthly compounding total number of months.
    NSDate *date = [NSDate date];
    NSCalendar *gregorian = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [gregorian components:(NSCalendarUnitDay|NSCalendarUnitMonth|NSCalendarUnitYear) fromDate:date];
    NSInteger currentMonthNSInt = [dateComponents month];
    int currentMonth = (int) currentMonthNSInt;  //Convert NSInteger to Int.
    return currentMonth;
}
@end
