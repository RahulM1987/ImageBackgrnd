//
//  UIDemoViewController.m
//  ImageBackgrnd
//
//  Created by Rahul Morade on 15/04/14.
//  Copyright (c) 2014 Rahul Morade. All rights reserved.
//

#import "UIDemoViewController.h"

@interface UIDemoViewController ()

@end

@implementation UIDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Button define
    
    [_btn addTarget:self action:@selector(btnclicked:) forControlEvents:UIControlEventTouchUpInside];

    
    // ImageBackground set
    _imagevw = [[UIImageView alloc]init];
    _imagevw.contentMode = UIViewContentModeScaleAspectFill;
    _imagevw.frame = self.view.bounds;
    
    UIImage *image = [UIImage imageNamed:@"Image.JPG"];
    _imagevw.image = image;

    // Switch define
    
    _sw = [[UISwitch alloc]initWithFrame:CGRectMake(100, 400, 220, 50)];
    [_sw addTarget:self action:@selector(swchanged:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_sw];
    
                      
}

-(void)btnclicked:(id)sender
{
    if (sender == _btn) {
        _lbl.text = @"Button Clicked";
        _lbl.textColor = [UIColor whiteColor];
    
        UIAlertView *alertview= [[UIAlertView alloc]initWithTitle:@"Enter the Credentials" message:nil delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok  ", nil];
    
        [alertview setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput];
        [alertview show];
       
        
        [self.view insertSubview:_imagevw atIndex:0];
        
        //[alert1 textFieldAtIndex:0];
        
    }
}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex

{
    if (buttonIndex == 1)
    {
        UITextField *username = [alertView textFieldAtIndex:0];
        NSLog(@"username: %@", username.text);
        
        UITextField *password = [alertView textFieldAtIndex:1];
        NSLog(@"password: %@", password.text);
        
    }else{
        NSLog(@"Cancel Button Pressed");
    }
}


- (void)swchanged:(id)sender
{
    if (sender == _sw) {
        NSLog(@"Switched ON");
        [self.view insertSubview:_imagevw atIndex:0];

    }

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
