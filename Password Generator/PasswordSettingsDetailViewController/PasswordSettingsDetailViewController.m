//
//  PasswordSettingsDetailViewController.m
//  Password Generator
//
//  Created by Wayne Hill on 4/21/17.
//  Copyright © 2017 Surfside Software Solutions. All rights reserved.
//

//#import "TouchDelegate.h"
#import "PasswordSettingsDetailViewController.h"

@interface PasswordSettingsDetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *passwordOnDetailPage;

@property (weak, nonatomic) IBOutlet UITextField *savedApplicationNameTextField;

- (IBAction)touchUpInsideSavedApplicationNameTextField:(UITextField *)sender;

- (IBAction)touchDownInsideSavedApplicationNameTextField:(UITextField *)sender;

- (IBAction)editingDidEndSavedApplicaitonNameTextField:(UITextField *)sender;

//- (IBAction)addSavedApplicationNameTextField:(UITextField *)sender;

@end

@implementation PasswordSettingsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

//self.savedApplicationNameTextField.delegate = self;
//[self.savedApplicationNameTextField becomeFirstResponder];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
//  [_savedApplicationNameTextField becomeFirstResponder];
}


-(BOOL)textFieldShouldReturn:(UITextField *)savedApplicationNameTextField
{
  NSLog(@"Return Key Pressed");
  
//[self.savedApplicationNameTextField resignFirstResponder];

//[_savedApplicationNameTextField resignFirstResponder];
  return YES;
//  return NO;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
NSLog(@"touchBegan:withEvents");

//[self.savedApplicationNameTextField resignFirstResponder];

//  if (self.delegate && [self.delegate respondsToSelector:@selector(touchesBegan:withEventinView)]) {
//    [self.delegate touchesBegan:touches withEvent:event inView:self];
//self.view.endEditing(true);
}

/*
// For the textView
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
  
  if([text isEqualToString:@"\n"]) {
    [textView resignFirstResponder];
    return NO;
 }
  return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)touchUpInsideSavedApplicationNameTextField:(UITextField *)sender 
{
NSLog(@"touchUpInsideSavedApplicationNameTextField");
//[self.savedApplicationNameTextField becomeFirstResponder];
}

- (IBAction)touchDownInsideSavedApplicationNameTextField:(UITextField *)sender 
{
NSLog(@"touchDownInsideSavedApplicationNameTextField");
}

- (IBAction)editingDidEndSavedApplicaitonNameTextField:(UITextField *)sender 
{
NSLog(@"editingDidEndSavedApplicationNameTextField");
}

/*
- (IBAction)addSavedApplicationNameTextField:(UITextField *)sender
{
NSLog(@"addSavedApplicationNameTextField");
}
*/


@end
