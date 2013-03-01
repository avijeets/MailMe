//
//  ViewController.m
//  MailMe
//
//  Created by Avijeet Sachdev on 2/17/13.
//  Copyright (c) 2013 Avijeet Sachdev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)emaiButton:(id)sender {
    
    MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc] init];
    [mailController setMailComposeDelegate:self];
    NSString *emailAddress = @"a@avijeets.com"; //Change to your email address
    NSArray *emailArray = [[NSArray alloc] initWithObjects:emailAddress, nil];
    NSString *message = [[self myTextView] text];
    [mailController setMessageBody:message isHTML:NO];
    [mailController setToRecipients:emailArray];
    [mailController setSubject:@"Note to Self!"];
    [self presentViewController:mailController animated:YES completion:nil];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [[self myTextView] resignFirstResponder];
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self dismissViewControllerAnimated:YES completion:NO];
}

@end
