//
//  ViewController.m
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#import "Objeto.h"
#import "Test.h"
#import "Tabla.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tablaDS = [[Tabla alloc]init];
    [ _table setDataSource:tablaDS];
    [ _table setDelegate:self];
}

- (void)viewWillAppear:(BOOL)animated {
    Test *sp = [Test instancia];
    NSArray *posts = [sp listarPost];
    [tablaDS setElementos:posts];
    [_table reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    Objeto *o = (Objeto *)[tablaDS objectAt:[indexPath row]];
    [self performSegueWithIdentifier:@"verMostrarPost" sender:o];
}
-(IBAction) volverAControladorX:(UIStoryboardSegue *)segue{ }

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"verMostrarPost"]) {
        
        if ([sender isKindOfClass:[Objeto class]]) {
            ViewController2 *vc = (ViewController2 *)[segue destinationViewController];
            [vc setPostSeleccionado:(Objeto *)sender];
        }
    }
}
@end
