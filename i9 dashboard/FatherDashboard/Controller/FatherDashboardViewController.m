//
//  FatherDashboardViewController.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 14/03/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "FatherDashboardViewController.h"

@interface FatherDashboardViewController ()
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *leadershipProgressBar;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *groupWorkProgressBar;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *focusProgressBar;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *logicSkillProgressBar;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *inovationSkillProgressBar;



@end

@implementation FatherDashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupInterface];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) setupInterface {
    

    self.leadershipProgressBar.delegate = self;
    self.groupWorkProgressBar.delegate = self;
    self.focusProgressBar.delegate = self;
    self.logicSkillProgressBar.delegate = self;
    self.inovationSkillProgressBar.delegate = self;

    [self showItensOnScreenAnimation];
}

- (void)showItensOnScreenAnimation{

    [self.leadershipProgressBar animateWithduration:4 andColor:[UIColor redColor] andRadius:15 andPercentageValue:1];
    [self.groupWorkProgressBar animateWithduration:4 andColor:[UIColor greenColor] andRadius:30 andPercentageValue:0.30];
    
    [self.focusProgressBar animateWithduration:4 andColor:[UIColor orangeColor] andRadius:45 andPercentageValue:0.60];
    
    [self.logicSkillProgressBar animateWithduration:4 andColor:[UIColor yellowColor] andRadius:60 andPercentageValue:0.85];
    
    [self.inovationSkillProgressBar animateWithduration:4 andColor:[UIColor grayColor] andRadius:75 andPercentageValue:0.60];
}


- (void)progressBarDidComplete{
    
}

@end
