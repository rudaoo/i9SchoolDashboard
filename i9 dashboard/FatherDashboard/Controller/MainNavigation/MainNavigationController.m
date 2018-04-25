//
//  MainNavigationController.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 25/04/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "MainNavigationController.h"
#import "FatherDashboardViewController.h"
#import "MMDrawerController.h"
#import "UIViewController+IPFUtils.h"

@interface MainNavigationController ()
@property (nonatomic, strong) UIViewController *viewController;

@end

@implementation MainNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
//
//    UIViewController * leftDrawer = [[UIViewController alloc] init];
//    FatherDashboardViewController * center = [[FatherDashboardViewController alloc] init];
//    UIViewController * rightDrawer = [[UIViewController alloc] init];
//
//    MMDrawerController * drawerController = [[MMDrawerController alloc]
//                                             initWithCenterViewController:center
//                                             leftDrawerViewController:leftDrawer
//                                             rightDrawerViewController:rightDrawer];
//
//    [drawerController
//     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
//         UIViewController * sideDrawerViewController;
//         if(drawerSide == MMDrawerSideLeft){
//             sideDrawerViewController = drawerController.leftDrawerViewController;
//         }
//         else if(drawerSide == MMDrawerSideRight){
//             sideDrawerViewController = drawerController.rightDrawerViewController;
//         }
//         [sideDrawerViewController.view setAlpha:percentVisible];
//     }];
    
}



@end
