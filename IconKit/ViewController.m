//
//  ViewController.m
//  IconKit
//
//  Created by IQR IT on 7/1/15.
//
//

#import "ViewController.h"
#import "Cancel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /*
    Next *next =[[Next alloc] initWithSize:CGSizeMake(200, 200)];
    next.fillColor = [UIColor redColor];
    next.strokeColor =[UIColor blueColor];
    next.strokeWidth = 2.0;
    next.hasRound = YES;
    next.onlyStroke = NO;

    UIImage *nextImage = next.image;
    */
    
    
    Cancel *previous =[[Cancel alloc] initWithSize:CGSizeMake(200, 200)];
    previous.fillColor = [UIColor redColor];
    previous.strokeColor =[UIColor blackColor];
    previous.strokeWidth = 2.0;
    previous.hasRound = YES;
    previous.onlyStroke = YES;
    
    UIImage *nextImage = previous.image;
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
