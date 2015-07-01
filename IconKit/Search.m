//
//  Search.m
//  IconKit
//
//  Created by IQR IT on 7/1/15.
//  Copyright (c) 2015 IQR IT. All rights reserved.
//

#import "Search.h"

#define CGPointMake(x,y) CGPointMake((x*self.size.width)/60, (y*self.size.height)/60)
@interface Search()
{
    UIColor *tmp_fillColor;
    UIColor *tmp_strokeColor;
    
}
@end

@implementation Search
-(instancetype)initWithSize:(CGSize)size
{
     if((self = [super init])) {
         self.size = size;
     }
    return self;
}
-(void)setFillColor:(UIColor *)fillColor
{
    tmp_fillColor=fillColor;
    UIImage *imageGenerated = [self generateImage];
    self.image = imageGenerated;
    
}
-(UIColor *)fillColor
{
    return tmp_fillColor;
}
-(void)setStrokeColor:(UIColor *)strokeColor
{
    tmp_strokeColor = strokeColor;
    UIImage *imageGenerated = [self generateImage];
    self.image = imageGenerated;
}
-(UIColor *)strokeColor
{
    return tmp_strokeColor;
}
-(UIImage *)generateImage
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [[UIScreen mainScreen] scale]);
    if (self.onlyStroke) {
   
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(60, 58.3)];
        [bezier2Path addLineToPoint: CGPointMake(58.2, 60.1)];
        [bezier2Path addLineToPoint: CGPointMake(39.2, 41.1)];
        [bezier2Path addCurveToPoint: CGPointMake(23.5, 47.1) controlPoint1: CGPointMake(35, 44.8) controlPoint2: CGPointMake(29.6, 47.1)];
        [bezier2Path addCurveToPoint: CGPointMake(0, 23.6) controlPoint1: CGPointMake(10.5, 47.1) controlPoint2: CGPointMake(0, 36.6)];
        [bezier2Path addCurveToPoint: CGPointMake(23.5, 0.1) controlPoint1: CGPointMake(0, 10.6) controlPoint2: CGPointMake(10.5, 0.1)];
        [bezier2Path addCurveToPoint: CGPointMake(47, 23.6) controlPoint1: CGPointMake(36.5, 0.1) controlPoint2: CGPointMake(47, 10.6)];
        [bezier2Path addCurveToPoint: CGPointMake(41, 39.3) controlPoint1: CGPointMake(47, 29.6) controlPoint2: CGPointMake(44.7, 35.1)];
        [bezier2Path addLineToPoint: CGPointMake(60, 58.3)];
        [bezier2Path closePath];
  
       
        [tmp_strokeColor setStroke];
        bezier2Path.lineWidth = 1;
        [bezier2Path stroke];
        
    }else
    {
        UIColor* fillColor = tmp_fillColor;
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(60, 58.3)];
        [bezier2Path addLineToPoint: CGPointMake(58.2, 60.1)];
        [bezier2Path addLineToPoint: CGPointMake(39.2, 41.1)];
        [bezier2Path addCurveToPoint: CGPointMake(23.5, 47.1) controlPoint1: CGPointMake(35, 44.8) controlPoint2: CGPointMake(29.6, 47.1)];
        [bezier2Path addCurveToPoint: CGPointMake(0, 23.6) controlPoint1: CGPointMake(10.5, 47.1) controlPoint2: CGPointMake(0, 36.6)];
        [bezier2Path addCurveToPoint: CGPointMake(23.5, 0.1) controlPoint1: CGPointMake(0, 10.6) controlPoint2: CGPointMake(10.5, 0.1)];
        [bezier2Path addCurveToPoint: CGPointMake(47, 23.6) controlPoint1: CGPointMake(36.5, 0.1) controlPoint2: CGPointMake(47, 10.6)];
        [bezier2Path addCurveToPoint: CGPointMake(41, 39.3) controlPoint1: CGPointMake(47, 29.6) controlPoint2: CGPointMake(44.7, 35.1)];
        [bezier2Path addLineToPoint: CGPointMake(60, 58.3)];
        [bezier2Path closePath];
        [fillColor setFill];
        [bezier2Path fill];
    }
    
    
    UIImage* result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return result;
}
@end
