//
//  ViewController2.m
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController2.h"
#import "Objeto.h"
#import "Tabla.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*-(IBAction)cargarDatos:(id)sender{
    NSURL *url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
    NSError *error;
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSHTTPURLResponse *respuesta;
    NSData *datos = [NSURLConnection sendSynchronousRequest:request returningResponse:&respuesta error:&error];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:datos options:0 error:nil];
    //NSMutableArray *arDatos = [[NSMutableArray alloc]init];
    //for (int a=0; a<[array count]; a++) {
    NSDictionary *d = (NSDictionary *)[array objectAtIndex:6];
    [_texto setText:[d objectForKey:@"body"]];
    //}
}

-(IBAction)cargarAsincrono:(id)sender{
    NSURL *url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
    NSError *error;
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data,NSError *connectionError){
        NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSDictionary *d = (NSDictionary *)[array objectAtIndex:5];
        [_texto setText:[d objectForKey:@"title"]];
        NSLog(@"%@",array);
    }];
}

-(IBAction)guardarDatos:(id)sender{
    NSURL *url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
    NSError *error;
    NSString *userid = @"1";
    NSString *idPost = @"101";
    NSString *title = @"title";
    NSString *body = @"body";
    NSDictionary *d = [NSDictionary dictionaryWithObjects:@[userid,idPost,title,body] forKeys:@[@"userId",@"id",@"title",@"body"] ];
    NSData *json = [NSJSONSerialization dataWithJSONObject:d options:NSJSONWritingPrettyPrinted error:&error];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:json];
    NSHTTPURLResponse *response;
    [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    if (error == nil && [response statusCode]==201) {
        NSLog(@"OK");
    } else{
        NSLog(@"MAL");
    }
}*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
