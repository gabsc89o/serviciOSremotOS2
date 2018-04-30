//
//  ViewController.m
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController.h"
#import "Objeto.h"
#import "Tabla.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
    NSError *error;
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data,NSError *connectionError){
        NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSDictionary *d = (NSDictionary *)[array objectAtIndex:5];
        
        Objeto *cp = [_pruebas objectAtIndex:5];
        NSString *str = [NSString stringWithFormat: @"%@", cp.body];
        [[celda textLabel]setText:str];
        NSLog(@"%@",[d objectForKey:@"title"]);
        
       // [_texto setText:[d objectForKey:@"body"]];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) volverAControladorX:(UIStoryboardSegue *)segue{ }

@end
