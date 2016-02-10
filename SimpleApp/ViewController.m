//
//  ViewController.m
//  SimpleApp
//
//  Created by Bradley Golden on 2/10/16.
//  Copyright © 2016 Bradley Golden. All rights reserved.
//

#import "ViewController.h"
#import "WelcomeViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation ViewController

-(void)hideKeyboard {
    [self.nameTextField resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self hideKeyboard];
    
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [self hideKeyboard];
    
    WelcomeViewController *wvc = [segue destinationViewController];
    wvc.name = self.nameTextField.text;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self hideKeyboard];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
