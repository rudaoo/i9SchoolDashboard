//
//  ACCircularProgressBarView.m
//  aco
//
//  Created by Rudney Camargo Pereira on 01/02/18.
//  Copyright © 2018 itau. All rights reserved.
//

#import "ACCircularProgressBarView.h"

@implementation ACCircularProgressBarView


-(id)initWithCoder:(NSCoder*)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if(self)
    {
        self.backgroundColor = [UIColor clearColor];
        
        CAShapeLayer *circleOverride = [CAShapeLayer layer];
        circleOverride.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(29, 29) radius:32 startAngle:-M_PI_2 endAngle:2 * M_PI - M_PI_2 clockwise:YES].CGPath;
        circleOverride.fillColor = [UIColor clearColor].CGColor;
        circleOverride.strokeColor = [UIColor clearColor].CGColor;
        circleOverride.lineWidth = 1;
        [self setBackgroundColor:[UIColor clearColor]];
        [self.layer addSublayer:circleOverride];
    }
    
    return self;
}

-(void) animateWithduration:(CGFloat) duration andColor:(UIColor*)color andRadius:(int) radius andPercentageValue:(double) percentageValue{
    
    
    CAShapeLayer *circle = [CAShapeLayer layer];
    circle.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(29, 29) radius:radius startAngle:-M_PI_2 endAngle:(2 * M_PI - M_PI_2) * percentageValue clockwise:YES].CGPath;
    circle.fillColor = [UIColor clearColor].CGColor;
    circle.strokeColor = color.CGColor;
    circle.lineWidth = 15;

    //dispatch_async(dispatch_get_main_queue(), ^{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.duration = duration;
    animation.removedOnCompletion = NO;
    animation.fromValue = @(0);
    animation.toValue = @(1);
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.delegate = self;
    
    [circle addAnimation:animation forKey:@"drawCircleAnimation"];
    [self.layer addSublayer:circle];
        
         //});
    
    
}

- (void)animationDidStop:(CAAnimation *)anim
                finished:(BOOL)flag{
    
    //[self.delegate progressBarDidComplete];
    
}




@end
