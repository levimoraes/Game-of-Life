//
//  PerfilViewController.m
//  Game_of_Life
//
//  Created by Levi Santos on 02/06/14.
//  Copyright (c) 2014 Levi Santos. All rights reserved.
//

#import "PerfilViewController.h"
#import "AtividadesViewController.h"
#import "RecompensasViewController.h"

@interface PerfilViewController ()

@end

@implementation PerfilViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)abaAtividades:(id)sender{
    AtividadesViewController *p = [[AtividadesViewController alloc]init];
    [self presentViewController:p
                       animated:YES
                     completion:nil];
}

-(IBAction)abaRecompensas:(id)sender{
    RecompensasViewController *p = [[RecompensasViewController alloc]init];
    [self presentViewController:p
                       animated:YES
                     completion:nil];
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
