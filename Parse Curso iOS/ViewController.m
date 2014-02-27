//
//  ViewController.m
//  Parse Curso iOS
//
//  Created by supervisor on 2/26/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import "ViewController.h"
#import "WelcomeViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize email, password;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLogin:(UIButton *)sender {
    [PFUser logInWithUsernameInBackground:email.text password:password.text
    block:^(PFUser *user, NSError *error) {
        if (user) {
            UIStoryboard *storyboard  = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            WelcomeViewController *welcomeView = [storyboard instantiateViewControllerWithIdentifier:@"Welcome"];
            welcomeView.name = user[@"name"];
            [self.navigationController pushViewController:welcomeView animated:YES];
        } else {
            NSString *errorString = [error userInfo] [@"error"];
            UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Confirmación" message: errorString delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil];
            [errorAlert show];
        }
    }];
}

- (IBAction)btnRegister:(UIButton *)sender {
}
@end
