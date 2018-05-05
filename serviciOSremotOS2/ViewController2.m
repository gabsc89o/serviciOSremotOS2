//
//  ViewController2.m
//  serviciOSremotOS2
//
//  Created by user138066 on 4/26/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController2.h"


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

-(void)viewWillAppear:(BOOL)animated{
    if (_postSeleccionado != nil) {
        _tfuserid.text = [NSString stringWithFormat:@"%d", _postSeleccionado.userid];
        _tftitle.text = _postSeleccionado.title;
        _tfbody.text = _postSeleccionado.body;
    }
}


@end
