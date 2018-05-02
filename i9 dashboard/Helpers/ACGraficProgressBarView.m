//
//  ACGraficProgressBarView.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 02/05/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "ACGraficProgressBarView.h"

@implementation ACGraficProgressBarView



-(id)initWithCoder:(NSCoder*)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if(self)
    {

    }
    
    return self;
}

-(void)makeLineLayer:(CGPoint)pointA toPointB:(CGPoint)pointB andDuration:(CGFloat) duration andColor:(UIColor*)color andPercentageValue:(double) percentageValue{

    double pontoFinal = pointA.y * percentageValue;

    CAShapeLayer *line = [CAShapeLayer layer];
    UIBezierPath *linePath=[UIBezierPath bezierPath];
    [linePath moveToPoint:CGPointMake(pointA.x, pontoFinal)];
    [linePath addLineToPoint:pointB];
    line.path= linePath.CGPath;
    line.fillColor = nil;
    line.opacity = 1.0;
    line.lineWidth = 15;
    line.strokeColor = color.CGColor;
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.duration = duration;
    animation.removedOnCompletion = NO;
    animation.fromValue = @(0);
    animation.toValue = @(1);
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.delegate = self;
    
    [line addAnimation:animation forKey:@"drawCircleAnimation"];
    
    [self.myShapeLayer addSublayer:line];
    
    [self.layer addSublayer:line];
}

@end
