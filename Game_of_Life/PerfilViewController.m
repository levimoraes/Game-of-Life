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
    return [[path objectAtIndex:0] stringByAppendingPathComponent:@"historico.plist"];
}


-(IBAction)saveData:(id)sender
{
    NSMutableArray *data = [[NSMutableArray alloc] init];
    __unused NSDate* todayData = [[NSDate alloc] init];
    [data addObject: _nome.text];
    [data addObject: _xp.text];
    [data addObject:_dinheiro.text];
    [data addObject:_level.text];
    
    [data writeToFile:[self saveFilePath] atomically:YES];
    
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
    
    //Foto
    _pegarFoto = [[UIImagePickerController alloc]init];
    _pegarFoto.delegate = self;
    _pegarFoto.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
    
    //Nick
    if([_nome.text isEqualToString:@""]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Escolha seu Nick" message:@"" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:nil];
    
        alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        alert.tag = 12;
    
        [alert addButtonWithTitle:@"Aceitar"];
        [alert show];
    }else{
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
