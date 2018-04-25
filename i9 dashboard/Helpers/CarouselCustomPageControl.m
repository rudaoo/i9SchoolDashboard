//
//  CarouselCustomPageControl.m
//  aco
//
//  Created by Leandro Luizari on 04/09/17.
//  Copyright © 2017 itau. All rights reserved.
//

#import "CarouselCustomPageControl.h"

@implementation CarouselCustomPageControl

-(void)setCurrentPage:(NSInteger)currentPage {
    
    [super setCurrentPage:currentPage];
    
    for (UIView *dot in self.subviews) { [dot removeFromSuperview]; }
    
    for (NSInteger i = 0; i < self.numberOfPages; i++ ) {
        
        CGFloat size = (i == currentPage) ? 14 : 7;
        CGFloat radius = size / 2;
        CGRect frame = CGRectMake(0, 0, size, size);
        
        UIView *dot = [[UIView alloc] initWithFrame:frame];
        dot.backgroundColor = (i == currentPage) ? self.currentPageIndicatorTintColor : self.pageIndicatorTintColor;
        dot.layer.cornerRadius = radius;
        
        CGFloat x = 3.5 + (i * (7 + 9));
        dot.center = CGPointMake(x, 15 + 3.5);
        
        [self addSubview:dot];
    }
}

@end
