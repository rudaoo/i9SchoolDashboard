//
//  SonDashboardViewController.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 03/05/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "SonDashboardViewController.h"

@interface SonDashboardViewController ()

@end

@implementation SonDashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithTitle:@""
                                                                   style:UIBarButtonItemStylePlain target:self action:@selector(onButtonPopViewController)];
    
    [buttonItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                        [UIFont fontWithName:@"itaufonts_master_24px_v1" size:24.0], NSFontAttributeName,
                                        nil]
                              forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = buttonItem;
    
    UIBarButtonItem *buttonItem2 = [[UIBarButtonItem alloc] initWithTitle:@""
                                                                   style:UIBarButtonItemStylePlain target:self action:@selector(onButtonPopViewController)];
    
    [buttonItem2 setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                        [UIFont fontWithName:@"itaufonts_master_24px_v1" size:24.0], NSFontAttributeName,
                                        nil]
                              forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = buttonItem2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) onButtonPopViewController{
}

@end
