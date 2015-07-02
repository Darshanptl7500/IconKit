//
//  ViewController.m
//  OptionSelection
//
//  Created by IQR IT on 7/1/15.
//  Copyright (c) 2015 IQR IT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSMutableArray *arrSelected;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrSelected =[[NSMutableArray alloc] init];
    self.filterOptions =[[NSMutableArray alloc] initWithArray:[self cabType]];
    
    [self collectionViewInitializations];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)collectionViewInitializations
{
    CollectionFlowLayout *flowLayout = [[CollectionFlowLayout alloc] init];
     [flowLayout setItemSize:CGSizeMake(100, 30)];
    [flowLayout setSectionInset:UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0)];
    [flowLayout setMinimumLineSpacing:0.0];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    [self.selectionCollectionView setCollectionViewLayout:flowLayout];
    
}
-(NSMutableArray *)cabType
{
    NSMutableArray *cabTypeArr =[[NSMutableArray alloc] init];
    [cabTypeArr addObject:@"COACH 19 SEAT"];
    [cabTypeArr addObject:@"Chevrolet Beat"];
    [cabTypeArr addObject:@"Force Tempo Traveller"];
    [cabTypeArr addObject:@"Hyundai Verna"];
    [cabTypeArr addObject:@"Maruti Dzire"];
    [cabTypeArr addObject:@"Maruti Swift"];
    
    return cabTypeArr;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [self.filterOptions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
    }
    
    cell.textLabel.text = self.filterOptions[indexPath.row];
    
    cell.backgroundColor = [UIColor clearColor];
    if ([self.arrSelected containsObject:self.filterOptions[indexPath.row]]) {
       
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        
    }else
    {
         cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    
    if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
        
        cell.accessoryType = UITableViewCellAccessoryNone;
        
        [self.arrSelected removeObject:self.filterOptions[indexPath.row]];
        [self.selectionCollectionView reloadData];
        [self.view setNeedsUpdateConstraints];
        
        
    }else
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        
        [self.arrSelected addObject:self.filterOptions[indexPath.row]];
        [self.selectionCollectionView reloadData];
        
        [self.view setNeedsUpdateConstraints];
        
    }
    
}

-(void)updateViewConstraints
{
    [super updateViewConstraints];
    
    if ([self.arrSelected count]!=0) {
        
        self.topLayoutConstraint.constant = 80;
        
    }else
    {
        self.topLayoutConstraint.constant = 0;
    }
    
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    
    return [self.arrSelected count];
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    CollectionViewCell *cell = (CollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    cell.delegate =self;
    cell.lblText.text = [self.arrSelected objectAtIndex:indexPath.row];
    [cell.lblText layoutIfNeeded];
    cell.layer.cornerRadius = 3.0;
   
    return cell;
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    CGRect textRect = [[self.arrSelected objectAtIndex:indexPath.row]
                       boundingRectWithSize:CGSizeMake(320, 30)
                       options:NSStringDrawingUsesLineFragmentOrigin
                       attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.0]}
                       
                       context:nil];
 
    return CGSizeMake(textRect.size.width+30, 30);

}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 4;
}
-(void)didCancelClicked:(NSString *)text
{
    [self.arrSelected removeObject:text];
    [self.selectionCollectionView reloadData];
    [self.tblView reloadData];
    [self.view setNeedsUpdateConstraints];
    
}
@end
