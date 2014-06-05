//
//  stuff.m
//  Game_of_Life
//
//  Created by Levi Santos on 05/06/14.
//  Copyright (c) 2014 Levi Santos. All rights reserved.
//

#import "stuff.h"

@implementation stuff


- (void) getStuff{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"historico" ofType:@"plist"];
    
    self.stuff = [[NSMutableArray alloc]initWithContentsOfFile:path];
}

@end
