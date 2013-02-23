//
//  ViewController.h
//  MailMe
//
//  Created by Avijeet Sachdev on 2/17/13.
//  Copyright (c) 2013 Avijeet Sachdev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextView *myTextView;
- (IBAction)emaiButton:(id)sender;


@end
