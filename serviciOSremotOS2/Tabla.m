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
    UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:idCeldaPrueba];
    if (celda == nil) {
        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCeldaPrueba];
    }
    NSObject *obj = [  _elementos objectAtIndex:[indexPath row]];
    [[celda textLabel] setText:[obj description]];
    return celda;
}

-(NSObject *)objectAt:(NSInteger)pos{
    return [_elementos objectAtIndex:pos];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_elementos count];
}

@end
