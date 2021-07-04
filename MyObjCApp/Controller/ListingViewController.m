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
    
    //if else statment
    BOOL state = false;
    if (state == true){
        self.titleLabel1.text = @"Allow Access";
    }else{
        self.titleLabel1.text = @"Deny Access";
    }
    
    
    ///Else IF statement
    NSString *myName = @"Amit Sharma";
    if ([myName isEqualToString:@"Amit Sharma"]){
        self.titleLabel2.text = @"Nice Name";
    }else if ([myName isEqualToString:@"Ben Ten"]){
        self.titleLabel2.text = @"New Name";
    }else{
        self.titleLabel2.text = @"Terrible Name";
    }
    
    ///< greater and lower check condition
    int number = 100;
    if (number > 50){
        self.titleLabel3.text = @"Higher";
    }else if (number < 111){
        self.titleLabel3.text = @"Lower";
    }else{
        self.titleLabel3.text = @"Default";
    }
}


@end
