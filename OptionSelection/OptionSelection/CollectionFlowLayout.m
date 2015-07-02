//
//  CollectionFlowLayout.m
//  OptionSelection
//
//  Created by IQR IT on 7/1/15.
//  Copyright (c) 2015 IQR IT. All rights reserved.
//

#import "CollectionFlowLayout.h"

@implementation CollectionFlowLayout
- (NSArray *) layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *answer = [super layoutAttributesForElementsInRect:rect];
    
    for(int i = 0; i < [answer count]; ++i) {
        
        if (i==0) {
            UICollectionViewLayoutAttributes *currentLayoutAttributes = answer[i];
            CGRect frame = currentLayoutAttributes.frame;
            frame.origin.x =2;
            currentLayoutAttributes.frame = frame;
            
        }else
        {
            UICollectionViewLayoutAttributes *currentLayoutAttributes = answer[i];
            UICollectionViewLayoutAttributes *prevLayoutAttributes = answer[i - 1];
            NSInteger maximumSpacing = 4;
            NSInteger origin = CGRectGetMaxX(prevLayoutAttributes.frame);
            if(origin + maximumSpacing + currentLayoutAttributes.frame.size.width < self.collectionViewContentSize.width) {
                CGRect frame = currentLayoutAttributes.frame;
                frame.origin.x = origin + maximumSpacing;
                frame.origin.y = prevLayoutAttributes.frame.origin.y;
                currentLayoutAttributes.frame = frame;
            }else
            {
                CGRect frame = currentLayoutAttributes.frame;
                frame.origin.x = 2;
                currentLayoutAttributes.frame = frame;
            }
        }
        
    }
    
    
    return answer;
}
@end
