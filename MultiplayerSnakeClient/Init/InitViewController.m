//
//  InitViewController.m
//  MultiplayerSnakeClient
//
//  Created by Apple on 5/11/16.
//  Copyright © 2016 Aloniki's Study. All rights reserved.
//

#import "InitViewController.h"
#import "LoginViewController.h"

#pragma mark - intetface -

@interface InitViewController()

@property (strong, nonatomic) LoginViewController* loginViewControoller;

@end

#pragma mark - implementation -

@implementation InitViewController

#pragma mark - view methods -
/**
 *  load the login interface
 */
-(void)viewDidLoad{
    [super viewDidLoad];
    self.loginViewControoller = [self.storyboard instantiateViewControllerWithIdentifier:@"Login"];
    [self.view insertSubview:self.loginViewControoller.view atIndex:0];
}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    if (!self.loginViewControoller.view.superview) {
        self.loginViewControoller = nil;
    }
}
@end
