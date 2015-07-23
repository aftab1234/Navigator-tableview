//
//  detailViewController.m
//  prob2
//
//  Created by Sam on 11/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "detailViewController.h"
#import "Programming_DemoViewController.h"

@interface detailViewController ()

@end

@implementation detailViewController
@synthesize imv;
@synthesize img1;
@synthesize img2;
@synthesize img3;
@synthesize img4;
@synthesize img5;
@synthesize city1;
@synthesize indexValue;
//@synthesize label;
@synthesize text1;
//@dynamic inputView;
//@synthesize table1;

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
    UIImage *img1 = [UIImage imageNamed:@"delhi.jpg"];
    UIImage *img2 = [UIImage imageNamed:@"mumbai.jpg"];
    UIImage *img3 = [UIImage imageNamed:@"kolkata.jpg"];
    UIImage *img4 = [UIImage imageNamed:@"jaipur.jpg"];
    UIImage *img5 = [UIImage imageNamed:@"lucknow.jpg"];
    //NSLog(@"%d",verify);
    text1.delegate = self;
     text1.editable=NO;
    text1.scrollEnabled=YES;
    //text1.inputView=nil;

    
    if (indexValue==0) {
        [imv setImage:img1];
         //[label setText:@"Delhi->The Capital Of India"];
         //text1.scrollEnabled=YES;
        text1.text = [text1.text stringByAppendingString:@"Mumbai->Capital Of Economy of India.Notifies observers that an editing session began in a text view. The affected view is stored in the object parameter of the notification. The userInfo dictionary is not used.Import Statement import UIKit Availability Available in iOS 2.0 and later.\n\n The default value of this property is YES.Mumbai->Capital Of Economy of India.Mumbai->Capital Of Economy of India.Notifies observers that an editing session began in a text view. The affected view is stored in the object parameter of the notification. The userInfo dictionary is not used.Import Statement import UIKit Availability Available in iOS 2.0 and later.\n\n The default value of this property is YES.Mumbai->Capital Of Economy of India"];
        text1.editable=YES;
        //text1.scrollEnabled=NO;
    }
                      if (indexValue==1) {
                         [imv setImage:img2];
                        
                          //[label setText:@"Mumbai->Capital Of Economy of India"];
                          
                          text1.text = [text1.text stringByAppendingString:@" The default value of this property is YES.Mumbai->Capital Of Economy of India.The userInfo dictionary is not used.Import Statement import UIKit Availability Available in iOS 2.0 and later.\n\n The default value of this property is YES.Mumbai->Capital Of Economy of India.Mumbai->Capital Of Economy of India.Notifies observers that an editing session began in a text view. The affected view is stored in the object parameter of the notification. The userInfo dictionary is not used.Import Statement import UIKit Availability Available in iOS 2.0 and later.\n\n The default value of this property is YES.Mumbai->Capital Of Economy of India"];
                          
                     }
                      if (indexValue==2) {
                         [imv setImage:img3];
                           //[label setText:@"Kolkata->City At Bank of River Hugli"];
                          text1.text = [text1.text stringByAppendingString:@" The default value of this property is YES.Mumbai->Capital Of Economy of India"];
                     }
                      if (indexValue==3) {
                         [imv setImage:img4];
                           //[label setText:@"Jaipur->Pink City Of India"];
                          text1.text = [text1.text stringByAppendingString:@"The default value of this property is YES.Mumbai->Capital Of Economy of India"];
                     }
                    if (indexValue==4) {
                         [imv setImage:img5];
                         //[label setText:@"Lucknow->The City Of Nawabs"];
                        text1.text = [text1.text stringByAppendingString:@"The default value of this property is YES.Mumbai->Capital Of Economy of India"];
                     }
    
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    NSLog(@"textViewShouldBeginEditing1");
    [text1 setSelectedRange:NSMakeRange(0, text1.text.length)];
    //[text1 setText:@""];
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    NSLog(@"textViewDidBeginEditing");
        [text1 setSelectedRange:NSMakeRange(0, text1.text.length)];
    [text1 setText:@""];
}
- (BOOL)textView:(UITextView *)textView
shouldChangeTextInRange:(NSRange)range
 replacementText:(NSString *)text
{
    NSLog(@"textView save changes");
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    NSLog(@"textViewDidChange");
}
//- (void)textViewDidChangeSelection:(UITextView *)textView {
//    NSLog(@"textViewDidChangeSelection");
//}



- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
    NSLog(@"textViewShouldEndEditing");
    return YES;
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    NSLog(@"textViewDidEndEditing");
}







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
