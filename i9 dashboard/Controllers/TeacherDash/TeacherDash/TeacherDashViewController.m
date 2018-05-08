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
@property (weak, nonatomic) IBOutlet ACGraficProgressBarView *secondGraphic;
@property (weak, nonatomic) IBOutlet ACGraficProgressBarView *thirdGraphic;
@property (weak, nonatomic) IBOutlet ACGraficProgressBarView *fourthGraphic;
@property (weak, nonatomic) IBOutlet ACGraficProgressBarView *fifithGraphic;
@property (weak, nonatomic) IBOutlet ACGraficProgressBarView *sixthGraphic;

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
    
    [self.leadershipProgressBar makeLineLayer:CGPointMake(45, 340) toPointB:CGPointMake(45, 200) andDuration:2 andColor:[UIColor orangeColor] andPercentageValue:0.9];
    
   [self.secondGraphic makeLineLayer:CGPointMake(100, 340) toPointB:CGPointMake(100, 200) andDuration:2 andColor:[UIColor redColor] andPercentageValue:1.5];
    
   [self.thirdGraphic makeLineLayer:CGPointMake(155, 340) toPointB:CGPointMake(155, 200) andDuration:2 andColor:[UIColor greenColor] andPercentageValue:1];

   [self.fourthGraphic makeLineLayer:CGPointMake(207, 340) toPointB:CGPointMake(207, 200) andDuration:2 andColor:[UIColor grayColor] andPercentageValue:0.7];
    
   [self.fourthGraphic makeLineLayer:CGPointMake(273, 340) toPointB:CGPointMake(273, 200) andDuration:2 andColor:[UIColor blueColor] andPercentageValue:1.2];

   [self.sixthGraphic makeLineLayer:CGPointMake(333, 340) toPointB:CGPointMake(333, 200) andDuration:2 andColor:[UIColor blackColor] andPercentageValue:1.5];
}
-(void) onButtonPopViewController{
}


@end
