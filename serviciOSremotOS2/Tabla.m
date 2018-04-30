//
//  Tabla.m
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "Tabla.h"

@implementation Tabla

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *idCeldaPrueba = @"celdaPrueba";
    NSLog(@"Hola");
    UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:idCeldaPrueba];
    if (celda == nil) {
        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCeldaPrueba];
    }
    NSInteger fila = [indexPath row];
    Objeto *cp = [_pruebas objectAtIndex:fila];
    NSString *str = [NSString stringWithFormat: @"%@ %@ %@ hola4", cp.userid,cp.title,cp.body];
    [[celda textLabel]setText:str];
    return celda;
}

-(Objeto *)pruebaAt:(NSInteger)pos{
    NSLog(@"Hola2");
    return (Objeto *)[_pruebas objectAtIndex:pos];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"Hola3");
    
    return [_pruebas count];
}

@end
