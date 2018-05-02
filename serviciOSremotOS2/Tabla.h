//
//  Tabla.h
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Tabla : NSObject<UITableViewDataSource>

@property NSArray *elementos;

-(NSObject *)objectAt:(NSInteger)pos;

@end
