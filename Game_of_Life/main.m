//
//  main.m
//  Game_of_Life
//
//  Created by Levi Santos on 28/05/14.
//  Copyright (c) 2014 Levi Santos. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Perfil.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    
    
        Perfil *pessoa1 = [[Perfil alloc]init];
        pessoa1.nome = @"Levi Moraes";
        pessoa1.dinheiro = 2500;
        pessoa1.xp = 100;
        pessoa1.level = 9;
        
        
    }
    
}
