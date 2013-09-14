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
@synthesize userName = _userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
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
