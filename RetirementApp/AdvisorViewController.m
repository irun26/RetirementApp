//
//  AdvisorViewController.m
//  RetirementApp
//
//  Created by Jimson Vedua on 7/13/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "AdvisorViewController.h"

@interface AdvisorViewController ()

@end

@implementation AdvisorViewController

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



- (IBAction)callPhoneNumberButton:(id)sender {

NSString *phNo = @"+15868797502";
NSURL *phoneUrl = [NSURL URLWithString:[NSString  stringWithFormat:@"telprompt:%@",phNo]];

    [[UIApplication sharedApplication] canOpenURL:phoneUrl];
    [[UIApplication sharedApplication] openURL:phoneUrl];
}

- (IBAction)doneButton:(id)sender {
    NSLog(@"Done Button Pressed");
}




@end
