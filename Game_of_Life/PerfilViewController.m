//
//  PerfilViewController.m
//  Game_of_Life
//
//  Created by Levi Santos on 02/06/14.
//  Copyright (c) 2014 Levi Santos. All rights reserved.
//

#import "PerfilViewController.h"

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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _pegarFoto = [[UIImagePickerController alloc]init];
    _pegarFoto.delegate = self;
    _pegarFoto.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
}

- (IBAction)salvarFoto:(UIButton *)sender {


    [self presentViewController:_pegarFoto animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)img editingInfo:(NSDictionary *)editInfo {

    _fotoPerfil.image = img;
    [[picker parentViewController] dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
