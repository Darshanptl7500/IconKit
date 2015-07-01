//
//  Search.h
//  IconKit
//
//  Created by IQR IT on 7/1/15.
//  Copyright (c) 2015 IQR IT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Search : NSObject
{
    
}
-(instancetype)initWithSize:(CGSize)size;
@property (nonatomic,readwrite) CGSize size;
@property (nonatomic,strong) UIColor *fillColor;

@property (nonatomic,assign) BOOL onlyStroke;
@property (nonatomic,strong) UIColor *strokeColor;
@property (nonatomic,assign) CGFloat strokeWidth;
@property (nonatomic,assign) BOOL shouldTwoStroke;
@property (nonatomic,strong) UIImage *image;
@end
