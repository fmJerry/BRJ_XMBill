
//  ViewController.m
//  TooBar
//
//  Created by 陈向阳 on 16/1/26.
//  Copyright © 2016年 陈向阳. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIToolbar * topView = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 30)];
    [topView setBarStyle:UIBarStyleBlack];
    
    UIBarButtonItem * helloButton = [[UIBarButtonItem alloc]initWithTitle:@"Hello" style:UIBarButtonItemStylePlain target:self action:nil];
    
    UIBarButtonItem * btnSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem * doneButton = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(dismissKeyBoard)];
    
    
    NSArray * buttonsArray = [NSArray arrayWithObjects:helloButton,btnSpace,doneButton,nil];
    
    [topView setItems:buttonsArray];
    [self.textField setInputAccessoryView:topView];
    
    [self.textField canBecomeFirstResponder];
    [self.textField resignFirstResponder];

    void(^Myblock)() = ^(){
        
    };
    
    NSLog(@"%@",Myblock);
}
-(IBAction)dismissKeyBoard
{
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
