//
//  ViewController.m
//  MyObjCApp
//
//  Created by wanderer on 02/07/21.
//

#import "ViewController.h"
#import "CatSoundViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.changeTitleLabel.text = @"i am here!";
    self.changeTitleLabel.layer.masksToBounds = true;
    self.changeTitleLabel.layer.cornerRadius = 20.0;
}

#pragma mark :- Press Me Button On
- (IBAction)pressMeButton:(id)sender {
    self.changeTitleLabel.text = @"Ohh It's You!!";
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
