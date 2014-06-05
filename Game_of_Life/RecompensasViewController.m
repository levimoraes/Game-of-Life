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
#import "Perfil.h"

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
-(NSString*)saveFilePath
{
    NSArray* path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSLog(@"%@",path);
    return [[path objectAtIndex:0] stringByAppendingPathComponent:@"historico.plist"];
}


- (IBAction)recompensa1:(id)sender {
    
    Perfil *pessoa1 = [[Perfil alloc]init];
    pessoa1.dinheiro = 100;
    NSString *dinheiro = [NSString stringWithFormat:@"%d",pessoa1.dinheiro];
    _dinheiroDisponivel.text = dinheiro;
    
    if(pessoa1.dinheiro >= 45){
        
        pessoa1.dinheiro = (pessoa1.dinheiro - 45);
        NSString *dinheiro = [NSString stringWithFormat:@"%d",pessoa1.dinheiro];
        _dinheiroDisponivel.text = dinheiro;
        
        }else{
         UIAlertView *alert = [[UIAlertView alloc]
         initWithTitle: @"Erro"
         message: @"Seu dinheiro não é suficiente para comprar esta recompensa!"
         delegate: nil
         cancelButtonTitle:@"OK"
        otherButtonTitles:nil];
        [alert show];
        }
}

- (IBAction)recompensa2:(id)sender {
    
    Perfil *pessoa1 = [[Perfil alloc]init];
    pessoa1.dinheiro = 100;
    NSString *dinheiro = [NSString stringWithFormat:@"%d",pessoa1.dinheiro];
    _dinheiroDisponivel.text = dinheiro;
    
    if(pessoa1.dinheiro >= 45){
        
        pessoa1.dinheiro = (pessoa1.dinheiro - 45);
        NSString *dinheiro = [NSString stringWithFormat:@"%d",pessoa1.dinheiro];
        _dinheiroDisponivel.text = dinheiro;
        
    }else{
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Erro"
                              message: @"Seu dinheiro não é suficiente para comprar esta recompensa!"
                              delegate: nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
        [alert show];
    }

}


- (IBAction)recompensa3:(id)sender {
    
    Perfil *pessoa1 = [[Perfil alloc]init];
    pessoa1.dinheiro = 100;
    NSString *dinheiro = [NSString stringWithFormat:@"%d",pessoa1.dinheiro];
    _dinheiroDisponivel.text = dinheiro;
    
    if(pessoa1.dinheiro >= 45){
        
        pessoa1.dinheiro = (pessoa1.dinheiro - 45);
        NSString *dinheiro = [NSString stringWithFormat:@"%d",pessoa1.dinheiro];
        _dinheiroDisponivel.text = dinheiro;
        
    }else{
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Erro"
                              message: @"Seu dinheiro não é suficiente para comprar esta recompensa!"
                              delegate: nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
        [alert show];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Perfil *pessoa1 = [[Perfil alloc]init];
    pessoa1.dinheiro = 100;
    NSString *dinheiro = [NSString stringWithFormat:@"%d",pessoa1.dinheiro];
    _dinheiroDisponivel.text = dinheiro;
    
    NSArray* path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *historico = [[path objectAtIndex:0] stringByAppendingPathComponent:@"historico.plist"];
    NSMutableArray *verificarDados = [[NSMutableArray alloc] initWithContentsOfFile: historico];
    //  NSLog(@"Plist = %@",verificarDados);
    // NSLog(@"ENDERECO = %@", path);
    // Do any additional setup after loading the view from its nib.

    NSMutableArray *data = [[NSMutableArray alloc] init];
    ////__unused NSDate* todayData = [[NSDate alloc] init];
    [data addObject: @"Levi"];
    [data addObject: @"30"];
    [data insertObject:@"Fulano" atIndex:2];
    
    
    [data writeToFile:[self saveFilePath] atomically:YES];
    NSLog(@"Salvo no plist\n%@",data);
    NSLog(@"Salvo no plist\n%@",[data objectAtIndex:0]);



}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}

@end
