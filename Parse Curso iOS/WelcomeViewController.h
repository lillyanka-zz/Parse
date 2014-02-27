//
//  WelcomeViewController.h
//  Parse Curso iOS
//
//  Created by supervisor on 2/26/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import "ViewController.h"

@interface WelcomeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblUsername;
@property (strong, nonatomic) NSString *name;
- (IBAction)insertTable:(id)sender;

@end
