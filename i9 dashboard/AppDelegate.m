//
//  AppDelegate.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 14/03/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "AppDelegate.h"
#import "MMDrawerController.h"
#import "MMDrawerVisualState.h"
#import "FatherDashboardViewController.h"
#import "MMNavigationController.h"
#import "UIViewController+IPFUtils.h"
#import <QuartzCore/QuartzCore.h>
#import "MMExampleDrawerVisualStateManager.h"
#import "RightMenuTableViewController.h"
#import "TeacherMenuTableViewController.h"
#import "TeacherDashViewController.h"
#import "TeacherClassDetailsViewController.h"
#import "FriendsListTableViewController.h"
#import "SonMenuTableViewController.h"
#import "SonDashboardViewController.h"

@interface AppDelegate ()
@property (nonatomic,strong) MMDrawerController * drawerController;
@property (nonatomic,strong) TeacherDashViewController * teacherCenterViewController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self sonApp];
   
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIColor * tintColor = [UIColor colorWithRed:29.0/255.0
                                          green:173.0/255.0
                                           blue:234.0/255.0
                                          alpha:1.0];
    [self.window setTintColor:tintColor];
    [self.window setRootViewController:self.drawerController];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void) fatherApp {
    
    RightMenuTableViewController * leftSideDrawerViewController = [RightMenuTableViewController initFromStoryboard:@"RightMenuTableViewController"];
    
    FatherDashboardViewController *centerViewController = [FatherDashboardViewController initFromStoryboard:@"FatherDashboard"];
    
    FriendsListTableViewController * rightSideDrawerViewController = [FriendsListTableViewController initFromStoryboard:@"FriendsListTableViewController"];
    
    UINavigationController * navigationController = [[MMNavigationController alloc] initWithRootViewController:centerViewController];
    [navigationController setRestorationIdentifier:@"MMExampleCenterNavigationControllerRestorationKey2"];
    UINavigationController * rightSideNavController = [[MMNavigationController alloc] initWithRootViewController:rightSideDrawerViewController];
    [rightSideNavController setRestorationIdentifier:@"MMExampleRightNavigationControllerRestorationKey2"];
    UINavigationController * leftSideNavController = [[MMNavigationController alloc] initWithRootViewController:leftSideDrawerViewController];
    [leftSideNavController setRestorationIdentifier:@"MMExampleLeftNavigationControllerRestorationKey2"];
    self.drawerController = [[MMDrawerController alloc]
                             initWithCenterViewController:navigationController
                             leftDrawerViewController:leftSideNavController
                             rightDrawerViewController:nil];
    [self.drawerController setShowsShadow:NO];
    [self.drawerController setRestorationIdentifier:@"MMDrawer2"];
    [self.drawerController setMaximumRightDrawerWidth:300.0];
    [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    [self.drawerController
     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
         MMDrawerControllerDrawerVisualStateBlock block;
         block = [[MMExampleDrawerVisualStateManager sharedManager]
                  drawerVisualStateBlockForDrawerSide:drawerSide];
         if(block){
             block(drawerController, drawerSide, percentVisible);
         }
     }];
}

-(void) teacherApp {
    
    TeacherMenuTableViewController * leftSideDrawerViewController = [TeacherMenuTableViewController initFromStoryboard:@"TeacherMenuTableViewController"];
    
    self.teacherCenterViewController = [TeacherDashViewController initFromStoryboard:@"TeacherDashViewController"];
    
    UIViewController * rightSideDrawerViewController = [[FatherDashboardViewController alloc] init];
    
    UINavigationController * navigationController = [[MMNavigationController alloc] initWithRootViewController:self.teacherCenterViewController];
    [navigationController setRestorationIdentifier:@"MMExampleCenterNavigationControllerRestorationKey"];
    UINavigationController * rightSideNavController = [[MMNavigationController alloc] initWithRootViewController:rightSideDrawerViewController];
    [rightSideNavController setRestorationIdentifier:@"MMExampleRightNavigationControllerRestorationKey"];
    UINavigationController * leftSideNavController = [[MMNavigationController alloc] initWithRootViewController:leftSideDrawerViewController];
    [leftSideNavController setRestorationIdentifier:@"MMExampleLeftNavigationControllerRestorationKey"];
    self.drawerController = [[MMDrawerController alloc]
                             initWithCenterViewController:navigationController
                             leftDrawerViewController:leftSideNavController
                             rightDrawerViewController:nil];
    [self.drawerController setShowsShadow:NO];
    [self.drawerController setRestorationIdentifier:@"MMDrawer"];
    [self.drawerController setMaximumRightDrawerWidth:200.0];
    [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    [self.drawerController
     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
         MMDrawerControllerDrawerVisualStateBlock block;
         block = [[MMExampleDrawerVisualStateManager sharedManager]
                  drawerVisualStateBlockForDrawerSide:drawerSide];
         if(block){
             block(drawerController, drawerSide, percentVisible);
         }
     }];
    
}


-(void) sonApp {
    
    SonMenuTableViewController * leftSideDrawerViewController = [SonMenuTableViewController initFromStoryboard:@"SonMenuTableViewController"];
    
    SonDashboardViewController *centerViewController = [SonDashboardViewController initFromStoryboard:@"SonDashboardViewController"];
    
    FriendsListTableViewController * rightSideDrawerViewController = [FriendsListTableViewController initFromStoryboard:@"FriendsListTableViewController"];
    
    UINavigationController * navigationController = [[MMNavigationController alloc] initWithRootViewController:centerViewController];
    [navigationController setRestorationIdentifier:@"MMExampleCenterNavigationControllerRestorationKey2"];
    UINavigationController * rightSideNavController = [[MMNavigationController alloc] initWithRootViewController:rightSideDrawerViewController];
    [rightSideNavController setRestorationIdentifier:@"MMExampleRightNavigationControllerRestorationKey2"];
    UINavigationController * leftSideNavController = [[MMNavigationController alloc] initWithRootViewController:leftSideDrawerViewController];
    [leftSideNavController setRestorationIdentifier:@"MMExampleLeftNavigationControllerRestorationKey2"];
    self.drawerController = [[MMDrawerController alloc]
                             initWithCenterViewController:navigationController
                             leftDrawerViewController:leftSideNavController
                             rightDrawerViewController:rightSideDrawerViewController];
    [self.drawerController setShowsShadow:NO];
    [self.drawerController setRestorationIdentifier:@"MMDrawer2"];
    [self.drawerController setMaximumRightDrawerWidth:300.0];
    [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    [self.drawerController
     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
         MMDrawerControllerDrawerVisualStateBlock block;
         block = [[MMExampleDrawerVisualStateManager sharedManager]
                  drawerVisualStateBlockForDrawerSide:drawerSide];
         if(block){
             block(drawerController, drawerSide, percentVisible);
         }
     }];
}

-(void) teacherpushScreen {
    
    TeacherClassDetailsViewController *vc = [TeacherClassDetailsViewController initFromStoryboard:@"TeacherClassDetailsViewController"];
    [self.teacherCenterViewController.navigationController pushViewController:vc animated:NO];
    [self.drawerController closeDrawerAnimated:YES completion:nil];
}

@end
