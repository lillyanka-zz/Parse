//
//  ViewController.h
//  Parse Curso iOS
//
//  Created by supervisor on 2/26/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UITextField *password;
- (IBAction)btnLogin:(UIButton *)sender;
- (IBAction)btnRegister:(UIButton *)sender;

@end
