//
//  UIDemoViewController.h
//  ImageBackgrnd
//
//  Created by Rahul Morade on 15/04/14.
//  Copyright (c) 2014 Rahul Morade. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDemoViewController : UIViewController <UIAlertViewDelegate>



@property (weak, nonatomic) IBOutlet UILabel *lbl;

@property (weak, nonatomic) IBOutlet UIButton *btn;

@property (nonatomic, strong) UIImageView *imagevw;

@property (nonatomic, strong) UISwitch *sw;







@end
