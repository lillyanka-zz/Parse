//
//  WelcomeViewController.m
//  Parse Curso iOS
//
//  Created by supervisor on 2/26/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

@synthesize name, lblUsername;

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
    lblUsername.text = name;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)insertTable:(id)sender {
    for (int i = 1; i < 11; i++) {
        PFObject *numbersTable = [PFObject objectWithClassName:@"Number"];
        numbersTable[@"num"] = [NSNumber numberWithInt:i];
        [numbersTable saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error){
            if (succeeded) {
                NSLog(@"Guardado correctamente");
            } else {
                NSLog(@"Error!");
            }
        }];
    }
     
}
@end
