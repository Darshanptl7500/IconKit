//
//  ViewController.h
//  OptionSelection
//
//  Created by IQR IT on 7/1/15.
//  Copyright (c) 2015 IQR IT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"
#import "CollectionFlowLayout.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,OptionSelectDelegate>
@property (nonatomic,strong) IBOutlet UITableView *tblView;
@property (nonatomic,strong) NSMutableArray *filterOptions;
@property (nonatomic,strong) IBOutlet NSLayoutConstraint *topLayoutConstraint;
@property (nonatomic,strong) IBOutlet UICollectionView *selectionCollectionView;
@end

