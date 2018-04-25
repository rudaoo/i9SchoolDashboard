//
//  TeacherClassDetailsViewController.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 25/04/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "TeacherClassDetailsViewController.h"
#import "TeacherClassPreparViewController.h"
#import "UIViewController+IPFUtils.h"

@interface TeacherClassDetailsViewController ()

@end

@implementation TeacherClassDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onButtonTouched:(id)sender {
    
    TeacherClassPreparViewController *vc = [TeacherClassPreparViewController initFromStoryboard:@"TeacherClassPreparViewController"];

    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
