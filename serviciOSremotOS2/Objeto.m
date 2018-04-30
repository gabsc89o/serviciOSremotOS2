//
//  Objeto.m
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "Objeto.h"

@implementation Objeto
-(id) initConUser:(NSString *)userid title:(NSString *)title body:(NSString *)body{
    if (self = [super init]) {
        _userid = userid;
        _title = title;
        _body = body;
    }
    return self;
}

@end
