//
//  ViewController.h
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tabla.h"

@interface ViewController : UIViewController

{
    Tabla *tablaDS;
    
}

@property IBOutlet UITableView *table;

@end

