//
//  SonDashboardViewController.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 03/05/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "SonDashboardViewController.h"

@interface SonDashboardViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *airplaneImage;

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
    
    
    [self planeDepart];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) onButtonPopViewController{
}

-(void) planeDepart {
    
    CGPoint originalCenter = self.airplaneImage.center;
    UIImageView *backupAirplane = self.airplaneImage;
    
    
    [UIView animateKeyframesWithDuration:1.5 delay:0 options:UIViewKeyframeAnimationOptionRepeat animations:^{
    
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:0.25 animations:^{
            
            [self.airplaneImage setFrame:CGRectMake(self.airplaneImage.center.x + 80, self.airplaneImage.center.y - 50, self.airplaneImage.frame.size.width, self.airplaneImage.frame.size.height) ];
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.1 relativeDuration:0.8 animations:^{
            
            self.airplaneImage.transform = CGAffineTransformMakeRotation(-M_PI/2);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.25 relativeDuration:0.25 animations:^{
            
            [self.airplaneImage setFrame:CGRectMake(self.airplaneImage.center.x + 100, self.airplaneImage.center.y - 200, self.airplaneImage.frame.size.width, self.airplaneImage.frame.size.height) ];
            
            [self.airplaneImage setAlpha:0];
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.51 relativeDuration:0.1 animations:^{
            
            self.airplaneImage.transform = CGAffineTransformMakeRotation(0);
            [self.airplaneImage setFrame:CGRectMake(0, originalCenter.y, self.airplaneImage.frame.size.width, self.airplaneImage.frame.size.height) ];
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.55 relativeDuration:0.45 animations:^{
            
            [self.airplaneImage setAlpha:1];
            [self.airplaneImage setCenter:originalCenter];
        }];
        
    
    
    }completion:nil];
}

@end
