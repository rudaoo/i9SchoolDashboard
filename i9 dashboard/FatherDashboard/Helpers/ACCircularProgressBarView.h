//
//  ACCircularProgressBarView.h
//  aco
//
//  Created by Rudney Camargo Pereira on 01/02/18.
//  Copyright © 2018 itau. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ACCircularProgressBarDelegate <NSObject>

@required
- (void)progressBarDidComplete;


@end

@interface ACCircularProgressBarView : UIView<CAAnimationDelegate>

@property (weak, nonatomic) id <ACCircularProgressBarDelegate> delegate;

-(void) animateWithduration:(CGFloat) duration andColor:(UIColor*)color andRadius:(int) radius andPercentageValue:(double) percentageValue;

@end
