//
//  ViewController.m
//  IBtest
//
//  Created by Daniel Ryan on 9/7/13.
//  Copyright (c) 2013 Daniel Ryan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//creates getters and setters for userName
//@synthesize userName = _userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.greeting = @"Hello";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)greetingSwitch:(UISwitch *)sender {
    if(sender.on)
    {
        self.greeting = @"Hello";
    }
    elseq
    {
        self.greeting = @"Good Bye";
    }
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"%@, %@!", self.greeting, nameString];

    self.label.text = greeting;
}

- (IBAction)changeSliderNumber:(UISlider *)sender {
    NSString *sliderText = [[NSString alloc] initWithFormat:@"%f", sender.value];
    self.sliderLabel.text = sliderText;
    self.progressIndicator.progress = sender.value;
}

- (BOOL)textFieldShouldReturn:(UITextField *) textField
{
    if(textField == self.textField)
    {
        [textField resignFirstResponder];
    }
    
    return YES;
}
@end
