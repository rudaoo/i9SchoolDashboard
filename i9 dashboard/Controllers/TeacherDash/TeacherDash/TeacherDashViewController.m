//
//  TeacherDashViewController.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 25/04/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "TeacherDashViewController.h"
#import "ACGraficProgressBarView.h"

@interface TeacherDashViewController ()

@property (weak, nonatomic) IBOutlet ACGraficProgressBarView *leadershipProgressBar;

@end

@implementation TeacherDashViewController

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
    
    [self showItensOnScreenAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showItensOnScreenAnimation{
    
    [self.leadershipProgressBar makeLineLayer:CGPointMake(29, 60) toPointB:CGPointMake(29, 10) andDuration:2 andColor:[UIColor orangeColor] andPercentageValue:0.5];
}
-(void) onButtonPopViewController{
}


@end
