//
//  ViewController.m
//  TaxApp
//
//  Created by Kevin on 5/9/15.
//  Copyright (c) 2015 Kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;

}

- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *userEnteredText = _priceTextField.text;
    double userEnteredValue = userEnteredText.intValue;

    if (_segmentedControl.selectedSegmentIndex==0)
    {
        double result = userEnteredValue * _caTax;
        _resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    } else if (_segmentedControl.selectedSegmentIndex==1)
    {
        double result = userEnteredValue * _chiTax;
        _resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    } else {
        double result = userEnteredValue * _nyTax;
        _resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }

}


@end
