//
//  ViewController.m
//  SignUp Form
//
//  Created by John Clem on 5/6/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordConfirmTextField;
@property (weak, nonatomic) IBOutlet UIButton *signUpButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(textFieldDidChangeTextWithNotification:)
                                                 name:UITextFieldTextDidChangeNotification
                                               object:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// listen for keyboard event
// make sure it's a valid email address
// password and password confirmation should match
// password strength checker / valid password



-(void)textFieldDidChangeTextWithNotification:(NSNotification *)note
{
    _signUpButton.enabled = [self passWordsMatch];
    
}

-(BOOL)passWordsMatch
{
    return [_passwordTextField.text isEqualToString:_passwordConfirmTextField.text];
}

- (IBAction)signUp:(id)sender
{
    if (![self passWordsMatch]) {
        NSLog(@"form invalid: passwords don't match");
    }
    

    
}

@end








