//
//  RegisterViewController.m
//  Parse Curso iOS
//
//  Created by supervisor on 2/26/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController
@synthesize username, email, password;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
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

- (IBAction)btnRegister:(UIButton *)sender {
    PFUser *user = [PFUser user];
    user.username = email.text;
    user.password = password.text;
    user.email = email.text;
    
    // other fields can be set just like with PFObject
    user[@"name"] = username.text;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
//            [CSNotificationView showInViewController:self
//                                               style:CSNotificationViewStyleSuccess
//                                             message:@"Yay! Your account has been created!"];
            UIAlertView *successAlert = [[UIAlertView alloc] initWithTitle:@"Confirmación" message:@"Su cuenta se creó correctamente" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil];
            [successAlert show];
        } else {
            NSString *errorString = [error userInfo] [@"error"];
            UIAlertView *errorAlert = [[UIAlertView alloc] initWithTitle:@"Confirmación" message: errorString delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles:nil, nil];
            [errorAlert show];
//            [CSNotificationView showInViewController:self
//                                               style:CSNotificationViewStyleError
//                                             message:@"A critical error happened."];
        }
    }];
}


@end
