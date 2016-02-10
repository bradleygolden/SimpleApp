//
//  WelcomeViewController.m
//  SimpleApp
//
//  Created by Bradley Golden on 2/10/16.
//  Copyright © 2016 Bradley Golden. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", self.name);
    self.welcomeLabel.text = [NSString stringWithFormat:@"%@ %@",
                              self.welcomeLabel.text, self.name];
    
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

@end
