//
//  Test.m
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "Test.h"
#import "Objeto.h"

@implementation Test

static Test *instancia;

+(Test *)instancia{
    if (instancia == nil) {
        instancia = [[Test alloc]init];
    }
    return instancia;
}

-(NSArray *)listarPost{
    NSURL *url = [ NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
    NSError *error;
    NSURLRequest *request = [ NSURLRequest requestWithURL:url];
    NSHTTPURLResponse *respuesta;
    NSData *data = [ NSURLConnection sendSynchronousRequest:request returningResponse:&respuesta error:&error];
    NSArray *ar = [ NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSMutableArray *posts = [[ NSMutableArray alloc] init];
    for (int a=0;a<[ar count];a++){
        NSDictionary *d = (NSDictionary *)[ar objectAtIndex:a];
        Objeto *post = [[Objeto alloc]initConDiccionario:d];
        [posts addObject:post];
    }
    return posts;
}

@end
