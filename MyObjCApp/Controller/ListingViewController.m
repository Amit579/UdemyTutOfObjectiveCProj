//
//  ListingViewController.m
//  MyObjCApp
//
//  Created by wanderer on 04/07/21.
//

#import "ListingViewController.h"

@interface ListingViewController ()

@end

@implementation ListingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *myArray = @[@"localAmitDev",@"localAmitDevel",@"localAmitDevlop",@"localAmitDevlope"];
    self.titleLabel1.text = myArray[0];
    self.titleLabel2.text = myArray[1];
    self.titleLabel3.text = myArray[2];
    self.titleLabel4.text = myArray[3];
}


@end
