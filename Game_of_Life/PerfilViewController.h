//
//  PerfilViewController.h
//  Game_of_Life
//
//  Created by Levi Santos on 02/06/14.
//  Copyright (c) 2014 Levi Santos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PerfilViewController : UIViewController

<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *fotoPerfil;
@property (weak, nonatomic) IBOutlet UIButton *botaoSalvarFoto;
@property (nonatomic) UIImagePickerController *pegarFoto;

- (IBAction)salvarFoto:(UIButton *)sender;

@end