//
//  ViewController.m
//  IconKit
//
//  Created by IQR IT on 7/1/15.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Search *search =[[Search alloc] initWithSize:CGSizeMake(200, 200)];
    search.fillColor =[UIColor redColor];
    
    UIImage *image =search.image;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
