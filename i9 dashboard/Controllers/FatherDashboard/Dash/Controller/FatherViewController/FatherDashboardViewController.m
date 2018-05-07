//
//  FatherDashboardViewController.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 14/03/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "FatherDashboardViewController.h"
#import "CarouselCustomPageControl.h"

@interface FatherDashboardViewController ()
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *leadershipProgressBar;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *groupWorkProgressBar;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *focusProgressBar;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *logicSkillProgressBar;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *inovationSkillProgressBar;

@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *leadershipProgressBar2;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *groupWorkProgressBar2;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *focusProgressBar2;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *logicSkillProgressbar2;
@property (weak, nonatomic) IBOutlet ACCircularProgressBarView *inovationSkillProgressBar2;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet CarouselCustomPageControl *pageControl;


@end

@implementation FatherDashboardViewController

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
    
    self.leadershipProgressBar2.delegate = self;
    self.groupWorkProgressBar2.delegate = self;
    self.focusProgressBar2.delegate = self;
    self.logicSkillProgressbar2.delegate = self;
    self.inovationSkillProgressBar2.delegate = self;

    [self showItensOnScreenAnimation];
}

- (void)showItensOnScreenAnimation{

    [self.leadershipProgressBar animateWithduration:4 andColor:[UIColor redColor] andRadius:15 andPercentageValue:1];
    [self.groupWorkProgressBar animateWithduration:4 andColor:[UIColor greenColor] andRadius:30 andPercentageValue:1];
    [self.focusProgressBar animateWithduration:4 andColor:[UIColor orangeColor] andRadius:45 andPercentageValue:0.60];
    [self.logicSkillProgressBar animateWithduration:4 andColor:[UIColor blueColor] andRadius:60 andPercentageValue:0.85];
    [self.inovationSkillProgressBar animateWithduration:4 andColor:[UIColor magentaColor] andRadius:75 andPercentageValue:0.60];
}

- (void)showItensOnScreenAnimation2{
    
    [self.leadershipProgressBar2 animateWithduration:4 andColor:[UIColor redColor] andRadius:15 andPercentageValue:1];
    [self.groupWorkProgressBar2 animateWithduration:4 andColor:[UIColor greenColor] andRadius:30 andPercentageValue:0.30];
    [self.focusProgressBar2 animateWithduration:4 andColor:[UIColor orangeColor] andRadius:45 andPercentageValue:0.60];
    [self.logicSkillProgressbar2 animateWithduration:4 andColor:[UIColor blueColor] andRadius:60 andPercentageValue:0.85];
    [self.inovationSkillProgressBar2 animateWithduration:4 andColor:[UIColor magentaColor] andRadius:75 andPercentageValue:0.60];
}



- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    CGFloat currentPage = self.scrollView.contentOffset.x / self.scrollView.frame.size.width ;
    
    if (currentPage == (int)currentPage) {
        
        self.pageControl.currentPage = currentPage;
        
        if (self.pageControl.currentPage == 0) {
            
            [self showItensOnScreenAnimation];
        }
        else{
            
            [self showItensOnScreenAnimation2];
        }
        
    }
}

-(void) onButtonPopViewController{
}



- (void)progressBarDidComplete{
    
}

@end
