//
//  ACGraficProgressBarView.h
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 02/05/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ACGraficProgressBarView : UIView<CAAnimationDelegate>

@property (weak, nonatomic) CAShapeLayer *myShapeLayer;

-(void)makeLineLayer:(CGPoint)pointA toPointB:(CGPoint)pointB andDuration:(CGFloat) duration andColor:(UIColor*)color andPercentageValue:(double) percentageValue;

@end
