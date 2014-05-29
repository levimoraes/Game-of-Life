//
//  HomeViewController.m
//  Game_of_Life
//
//  Created by Adalto William dos Reis on 28/05/14.
//  Copyright (c) 2014 Levi Santos. All rights reserved.
//

#import "HomeViewController.h"
#import "ViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)enviar:(id)sender{
    ViewController *p = [[ViewController alloc]init];
    [self presentViewController:p
                       animated:YES
                     completion:nil];
}

-(IBAction)releaseKeyboard:(id)sender{
    [_nomeUsuarioButton resignFirstResponder];
    [_comecarButton resignFirstResponder];
    [_fotoImage resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
