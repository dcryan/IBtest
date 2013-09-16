//
//  ViewController.h
//  IBtest
//
//  Created by Daniel Ryan on 9/7/13.
//  Copyright (c) 2013 Daniel Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UIProgressView *progressIndicator;

- (IBAction)greetingSwitch:(UISwitch *)sender;
- (IBAction)changeGreeting:(id)sender;
- (IBAction)changeSliderNumber:(UISlider *)sender;

@property (copy, nonatomic) NSString *userName;
@property (copy, nonatomic) NSString *greeting;
@property (copy, nonatomic) NSString *sliderNumber;
@end
