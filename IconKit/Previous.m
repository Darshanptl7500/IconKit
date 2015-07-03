//
//  Previous.m
//  IconKit
//
//  Created by IQR IT on 7/3/15.
//
//

#import "Previous.h"
#define CGPointMake(x,y) CGPointMake((x*tmp_size.width)/410, (y*tmp_size.height)/410)
@interface Previous()
{
    UIColor *tmp_strokeColor;
    UIColor *tmp_fillColor;
    CGFloat tmp_width;
    CGSize tmp_size;
    BOOL tmp_hasRound;
    BOOL tmp_onlyStroke;
    
}
@end

@implementation Previous
-(instancetype)initWithSize:(CGSize)size
{
    if((self = [super init])) {
        tmp_size = size;
        tmp_onlyStroke = YES;
        tmp_width = 1.0;
        tmp_fillColor = [UIColor grayColor];
        tmp_strokeColor =[UIColor blackColor];
        
    }
    return self;
}
#pragma mark - Size Getter Setter
-(void)setSize:(CGSize)size
{
    tmp_size = size;
    UIImage *imageGenerated = [self generateImage];
    self.image = imageGenerated;
}
-(CGSize)size
{
    return tmp_size;
}

#pragma mark - Stroke Getter Setter
-(void)setStrokeColor:(UIColor *)strokeColor
{
    tmp_strokeColor = strokeColor;
    NSAssert(!CGColorEqualToColor(tmp_strokeColor.CGColor,tmp_fillColor.CGColor), @"Stroke and Fill Color Must be different");
    UIImage *imageGenerated = [self generateImage];
    self.image = imageGenerated;
}
-(UIColor *)strokeColor
{
    return tmp_strokeColor;
}
#pragma mark - StrokeWidth Getter Setter
-(void)setStrokeWidth:(CGFloat)strokeWidth
{
    tmp_width = strokeWidth;
    UIImage *imageGenerated = [self generateImage];
    self.image = imageGenerated;
}
-(CGFloat)strokeWidth
{
    return tmp_width;
}
#pragma mark - HasRound Getter Setter
-(void)setHasRound:(BOOL)hasRound
{
    tmp_hasRound  = hasRound;
    UIImage *imageGenerated = [self generateImage];
    self.image = imageGenerated;
}
-(BOOL)hasRound
{
    return tmp_hasRound;
}
#pragma mark - FillColor Getter Setter
-(void)setFillColor:(UIColor *)fillColor
{
    tmp_fillColor = fillColor;
    
    NSAssert(!CGColorEqualToColor(tmp_strokeColor.CGColor,tmp_fillColor.CGColor), @"Stroke and Fill Color Must be different");
    
    UIImage *imageGenerated = [self generateImage];
    self.image = imageGenerated;
}
-(UIColor *)fillColor
{
    return tmp_fillColor;
    
}
#pragma mark - OnlyStroke Getter Setter
-(void)setOnlyStroke:(BOOL)onlyStroke
{
    tmp_onlyStroke = onlyStroke;
    UIImage *imageGenerated = [self generateImage];
    self.image = imageGenerated;
}
-(BOOL)onlyStroke
{
    return tmp_onlyStroke;
}
#pragma mark - Image Generation
-(UIImage *)generateImage
{
    UIGraphicsBeginImageContextWithOptions(tmp_size, NO, [[UIScreen mainScreen] scale]);
    
    if (!tmp_strokeColor) {
        tmp_strokeColor = [UIColor blackColor];
    }
    if (!tmp_fillColor) {
        tmp_fillColor = [UIColor blackColor];
    }
    if (!tmp_width || tmp_width == 0.0) {
        tmp_width = 1.0f;
    }
    
    UIColor* strokeColor = tmp_strokeColor;
    UIColor* fillColor = tmp_fillColor;
    
    if (tmp_hasRound) {
        
        UIBezierPath* oval = UIBezierPath.bezierPath;
        [oval moveToPoint: CGPointMake(386.7, 204.4)];
        [oval addCurveToPoint: CGPointMake(204.9, 22.6) controlPoint1: CGPointMake(386.7, 103.99) controlPoint2: CGPointMake(305.31, 22.6)];
        [oval addCurveToPoint: CGPointMake(23.1, 204.4) controlPoint1: CGPointMake(104.49, 22.6) controlPoint2: CGPointMake(23.1, 103.99)];
        [oval addCurveToPoint: CGPointMake(204.9, 386.2) controlPoint1: CGPointMake(23.1, 304.81) controlPoint2: CGPointMake(104.49, 386.2)];
        [oval addCurveToPoint: CGPointMake(386.7, 204.4) controlPoint1: CGPointMake(305.31, 386.2) controlPoint2: CGPointMake(386.7, 304.81)];
        [oval closePath];
        if (!tmp_onlyStroke) {
            [fillColor setFill];
            [oval fill];
        }
        
        [strokeColor setStroke];
        oval.lineWidth = tmp_width;
        [oval stroke];
        
    }
    
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(244.7, 271.4)];
    [bezierPath addLineToPoint: CGPointMake(153, 203)];
    [bezierPath addLineToPoint: CGPointMake(153, 203)];
    [bezierPath addLineToPoint: CGPointMake(153, 203)];
    [bezierPath addLineToPoint: CGPointMake(153, 203)];
    [bezierPath addLineToPoint: CGPointMake(244.6, 134.5)];
    bezierPath.lineCapStyle = kCGLineCapRound;
    
    bezierPath.lineJoinStyle = kCGLineJoinRound;
    
    [strokeColor setStroke];
    bezierPath.lineWidth = tmp_width;
    [bezierPath stroke];
    
    
    UIImage* result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return result;
}

@end
