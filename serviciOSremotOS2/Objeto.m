//
//  Objeto.m
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "Objeto.h"

@implementation Objeto

-(id) initConDiccionario:(NSDictionary *)diccionario{
    if (self = [super init]) {
        [self setIdPost:[diccionario objectForKey:@"id"]];
        [self setUserid:[diccionario objectForKey:@"userId"]];
        [self setTitle:[diccionario objectForKey:@"title"]];
        [self setBody:[diccionario objectForKey:@"body"]];
    }
    return self;
}

-(NSDictionary *) asDictionary{
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjects:@[_userid,_title,_body] forKeys:@[@"userid",@"title",@"body"]];
    if (_idPost != nil) {
        [dict setObject:_idPost forKey:@"id"];
    }
    return dict;
}

-(NSString *) description{
    return _title;
}
/*-(id) initConUser:(NSString *)userid title:(NSString *)title body:(NSString *)body{
    if (self = [super init]) {
        _userid = userid;
        _title = title;
        _body = body;
    }
    return self;
}*/

@end
