//
//  RegisterViewController.h
//  Parse Curso iOS
//
//  Created by supervisor on 2/26/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import "ViewController.h"

@interface RegisterViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UITextField *password;
- (IBAction)btnRegister:(UIButton *)sender;

@end
