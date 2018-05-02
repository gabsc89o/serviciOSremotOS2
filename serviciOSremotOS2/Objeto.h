//
//  Objeto.h
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Objeto : NSObject

@property NSNumber *idPost;
@property NSNumber *userid;
@property NSString *title;
@property NSString *body;

-(id) initConDiccionario:(NSDictionary *)diccionario;
-(NSDictionary *) asDictionary;

/*-(id) initConUser:(NSNumber *)idPost
             user:(NSNumber *)userid
               title:(NSString *)title
             body:(NSString *)body;*/

@end
