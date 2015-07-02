//
//  Next.h
//  IconKit
//
//  Created by IQR IT on 7/2/15.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Next : NSObject
-(instancetype)initWithSize:(CGSize)size;
@property (nonatomic,readwrite) CGSize size;


@property (nonatomic,strong) UIColor *strokeColor;
@property (nonatomic,assign) CGFloat strokeWidth;
@property (nonatomic,strong) UIColor *fillColor;
@property (nonatomic,assign) BOOL onlyStroke;
@property (nonatomic,assign) BOOL hasRound;
@property (nonatomic,strong) UIImage *image;
@end
