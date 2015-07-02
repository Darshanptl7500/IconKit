//
//  CollectionViewCell.m
//  OptionSelection
//
//  Created by IQR IT on 7/1/15.
//  Copyright (c) 2015 IQR IT. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell
-(IBAction)btnCancelTapped:(id)sender
{
    if([self.delegate respondsToSelector:@selector(didCancelClicked:)])
    {
        [self.delegate didCancelClicked:self.lblText.text];
    }
}
@end
