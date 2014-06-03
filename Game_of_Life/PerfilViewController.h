//
//  PerfilViewController.h
//  Game_of_Life
//
//  Created by Levi Santos on 02/06/14.
//  Copyright (c) 2014 Levi Santos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PerfilViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *nome;
@property (weak, nonatomic) IBOutlet UILabel *dinheiro;
@property (weak, nonatomic) IBOutlet UILabel *xp;
@property (weak, nonatomic) IBOutlet UILabel *level;
@property (weak, nonatomic) IBOutlet UIButton *sendButton;
@property (weak, nonatomic) IBOutlet UIImageView *fotoPerfil;
@property (weak, nonatomic) IBOutlet UIButton *botaoSalvarFoto;
@property (weak, nonatomic) IBOutlet UIButton *mudarNick;
@property (nonatomic) UIImagePickerController *pegarFoto;
@end
