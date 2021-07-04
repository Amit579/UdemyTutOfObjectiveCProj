//
//  ViewController.m
//  MyObjCApp
//
//  Created by wanderer on 02/07/21.
//

#import "ViewController.h"
#import "CatSoundViewController.h"
#import "ListingViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    word = @"Hello,";
    name = @"Amit Dev";
    
    self.setTitleLabel.text = [NSString stringWithFormat:@"%@ %@",word,name];
    self.setTitleLabel.layer.masksToBounds = true;
    self.setTitleLabel.layer.cornerRadius = 20.0;
    
    self.changeTitleLabel.text = @"i am here!";
    self.changeTitleLabel.layer.masksToBounds = true;
    self.changeTitleLabel.layer.cornerRadius = 20.0;
}

#pragma mark :- Press Me Button On
- (IBAction)pressMeButton:(id)sender {
    self.changeTitleLabel.text = @"Ohh It's You!!";
}



#pragma mark:- push vc to another vc code
- (IBAction)listingButton:(id)sender {
    [self navigateToViewController];
}

#pragma mark:- push vc to another vc code
-(void)navigateToViewController{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ListingViewController *myNewVC = (ListingViewController *)[storyboard instantiateViewControllerWithIdentifier:@"listingVC"];
    [self.navigationController pushViewController:myNewVC animated:YES];
}


- (IBAction)moveToNextButton:(id)sender {
    NSLog(@"Hey You Click Me?");
    /*UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CatSoundViewController *myVC = (CatSoundViewController *)[storyboard instantiateViewControllerWithIdentifier:@"catSoundVC"];
    [self.navigationController pushViewController:myVC animated:YES];*/
    [self navigateToMyNewViewController];
}

#pragma mark:- push vc to another vc code
- (void)navigateToMyNewViewController {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CatSoundViewController *myNewVC = (CatSoundViewController *)[storyboard instantiateViewControllerWithIdentifier:@"catSoundVC"];
//    [self.navigationController presentViewController:myNewVC animated:YES completion:nil];
    [self.navigationController pushViewController:myNewVC animated:YES];
}


@end
