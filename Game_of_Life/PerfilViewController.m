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
    NSDate* todayData = [[NSDate alloc] init];
    [data addObject: _nome.text];
    [data addObject: _xp.text];
    [data addObject:_dinheiro.text];
    [data addObject:_level.text];
    
    [data writeToFile:[self saveFilePath] atomically:YES];
    
}





- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _pegarFoto = [[UIImagePickerController alloc]init];
    
    _pegarFoto.delegate = self;
    
    _pegarFoto.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
    
    
    _nome.text = @"Levi Moraes";
    _dinheiro.text = @"25000";
    _xp.text = @"150";
    _level.text = @"2";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
