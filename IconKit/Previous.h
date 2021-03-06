//
//  Previous.h
//  IconKit
//
//  Created by IQR IT on 7/3/15.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Previous : NSObject
-(instancetype)initWithSize:(CGSize)size;
@property (nonatomic,readwrite) CGSize size;


@property (nonatomic,strong) UIColor *strokeColor;
@property (nonatomic,assign) CGFloat strokeWidth;
@property (nonatomic,strong) UIColor *fillColor;
@property (nonatomic,assign) BOOL onlyStroke;
@property (nonatomic,assign) BOOL hasRound;
@property (nonatomic,strong) UIImage *image;
@end
