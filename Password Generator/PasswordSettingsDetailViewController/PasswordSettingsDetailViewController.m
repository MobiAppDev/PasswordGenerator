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

@end

@implementation PasswordSettingsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

//  savedApplicationNameTextField.delegate = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)savedApplicationNameTextField //textField
{
  NSLog(@"Return Key Pressed");
  [_savedApplicationNameTextField
resignFirstResponder];
  return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
  NSLog(@"touchBegan");
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

@end
