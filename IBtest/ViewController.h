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
- (IBAction)changeGreeting:(id)sender;

@property (copy, nonatomic) NSString *userName;
@end
