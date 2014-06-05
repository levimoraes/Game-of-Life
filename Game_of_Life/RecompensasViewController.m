//
//  RecompensasViewController.m
//  Game_of_Life
//
//  Created by Levi Santos on 02/06/14.
//  Copyright (c) 2014 Levi Santos. All rights reserved.
//

#import "RecompensasViewController.h"
#import "PerfilViewController.h"
#import "AtividadesViewController.h"

@interface RecompensasViewController ()

@end

@implementation RecompensasViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)abaPerfil:(id)sender{
    PerfilViewController *p = [[PerfilViewController alloc]init];
    [self presentViewController:p
                       animated:YES
                     completion:nil];
}

-(IBAction)abaAtividades:(id)sender{
    AtividadesViewController*p = [[AtividadesViewController alloc]init];
    [self presentViewController:p
                       animated:YES
                     completion:nil];
}
NSMutableArray *data = [[NSMutableArray alloc] init];
//__unused NSDate* todayData = [[NSDate alloc] init];
[data addObject: @"Levi"];
[data addObject: @"30"];
[data addObject:_dinheiro.text];
[data addObject:_level.text];

[data writeToFile:[self saveFilePath] atomically:YES];
NSLog(@"Salvo no plist\n%@",data);
NSLog(@"Salvo no plist\n%@",[data objectAtIndex:0]);


- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray* path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *historico = [[path objectAtIndex:0] stringByAppendingPathComponent:@"historico.plist"];
    NSMutableArray *verificarDados = [[NSMutableArray alloc] initWithContentsOfFile: historico];
    //  NSLog(@"Plist = %@",verificarDados);
    // NSLog(@"ENDERECO = %@", path);
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
