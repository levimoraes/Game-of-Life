//
//  Pessoa.h
//  Game_of_Life
//
//  Created by Adalto William dos Reis on 29/05/14.
//  Copyright (c) 2014 Levi Santos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject
@property (nonatomic,weak) NSString *nome;
@property (nonatomic) double *dinheiro;
@property (nonatomic) NSInteger *vida;
@property (nonatomic) NSInteger *level;
@end
