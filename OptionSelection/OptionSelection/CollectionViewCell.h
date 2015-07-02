//
//  CollectionViewCell.h
//  OptionSelection
//
//  Created by IQR IT on 7/1/15.
//  Copyright (c) 2015 IQR IT. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol OptionSelectDelegate<NSObject>
-(void)didCancelClicked:(NSString *)text;
@end
@interface CollectionViewCell : UICollectionViewCell
@property (nonatomic,strong) IBOutlet UILabel *lblText;
@property (nonatomic,strong) IBOutlet UIButton *btnCancel;
@property (nonatomic,strong)id<OptionSelectDelegate> delegate;
@end
