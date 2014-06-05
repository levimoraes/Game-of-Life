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
#import "Perfil.h"
#import "stuff.h"

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
- (void)subirLevel{
    int xp = 20;
    
    NSLog(@"%d",xp);


}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)img editingInfo:(NSDictionary *)editInfo {
    _fotoPerfil.image = img;
    
    [[picker presentingViewController] dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)salvarFoto:(UIButton *)sender {
    [self presentViewController:_pegarFoto animated:YES completion:nil];
    
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
-(NSString*)saveFilePath
{
    NSArray* path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSLog(@"%@",path);
    return [[path objectAtIndex:0] stringByAppendingPathComponent:@"historico.plist"];
}


-(IBAction)saveData:(id)sender
{
    NSMutableArray *data = [[NSMutableArray alloc] init];
    //__unused NSDate* todayData = [[NSDate alloc] init];
    [data addObject: @"Levi"];
    [data addObject: @"30"];
    [data addObject:_dinheiro.text];
    [data addObject:_level.text];
    
    [data writeToFile:[self saveFilePath] atomically:YES];
    NSLog(@"Salvo no plist\n%@",data);
    NSLog(@"Salvo no plist\n%@",[data objectAtIndex:0]);
    
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (alertView.tag == 12) {
        if (buttonIndex == 1) {
            UITextField *textfield = [alertView textFieldAtIndex:0];
            NSLog(@"username: %@", textfield.text);
            _nome.text = textfield.text;
        }
    }
}



-(IBAction)changeNick
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Mude seu Nick" message:@"" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:nil];
    
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    alert.tag = 12;
    
    [alert addButtonWithTitle:@"Aceitar"];
    [alert show];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    
    _pegarFoto = [[UIImagePickerController alloc]init];
    _pegarFoto.delegate = self;
    _pegarFoto.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
    
    
    
    
    NSArray* path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
     NSString *historico = [[path objectAtIndex:0] stringByAppendingPathComponent:@"historico.plist"];
      NSMutableArray *verificarDados = [[NSMutableArray alloc] initWithContentsOfFile: historico];
     //  NSLog(@"Plist = %@",verificarDados);
     // NSLog(@"ENDERECO = %@", path);
    
    
    if(verificarDados == nil){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Escolha seu Nick" message:@"" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:nil];
    
        alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        alert.tag = 12;
    
        [alert addButtonWithTitle:@"Aceitar"];
        [alert show];
        
        //Iniciando Pessoa
        Perfil *pessoa1 = [[Perfil alloc]init];
        //pessoa1.nome = @"";
        pessoa1.dinheiro = 50;
        pessoa1.xp = 00;
        pessoa1.level = 1;
        
        
        NSString *stringlevel = [NSString stringWithFormat:@"%d",pessoa1.level];
        NSString *stringXP = [NSString stringWithFormat:@"%d",pessoa1.xp];
        NSString *stringDinheiro = [NSString stringWithFormat:@"%d",pessoa1.dinheiro];
        _dinheiro.text = stringDinheiro;
        _xp.text = stringXP ;
        _level.text = stringlevel;
        
    }else{
        //Iniciando Pessoa
        Perfil *pessoa1 = [[Perfil alloc]init];
        //pessoa1.nome = @"";
        pessoa1.dinheiro = 50;
        pessoa1.xp = 00;
        pessoa1.level = 1;
        
        pessoa1.dinheiro +=300;
        
        
        NSString *stringlevel = [NSString stringWithFormat:@"%d",pessoa1.level];
        NSString *stringXP = [NSString stringWithFormat:@"%d",pessoa1.xp];
        NSString *stringDinheiro = [NSString stringWithFormat:@"%d",pessoa1.dinheiro];
       // _nome.text = nomeUser;
        _dinheiro.text = stringDinheiro;
        _xp.text = stringXP ;
        _level.text = stringlevel;
    
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
