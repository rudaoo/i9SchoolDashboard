//
//  MainNavigationController.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 25/04/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "MainNavigationController.h"

@interface MainNavigationController ()
@property (nonatomic, strong) UIViewController *viewController;

@end

@implementation MainNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    

    
}



@end
