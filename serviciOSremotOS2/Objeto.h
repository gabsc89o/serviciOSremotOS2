//
//  Objeto.h
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Objeto : NSObject

@property NSString *userid;
@property NSString *title;
@property NSString *body;


-(id) initConUser:(NSString *)userid
               title:(NSString *)title
             body:(NSString *)body;


/*-(id) initConId:(NSInteger) idGrupo
         nombre:(NSString *)nombre
           pais:(NSString *)pais
         genero:(NSString *)genero
           year:(int)year;*/

@end
