//
//  CatSoundViewController.m
//  MyObjCApp
//
//  Created by wanderer on 02/07/21.
//

#import "CatSoundViewController.h"

@interface CatSoundViewController ()

@end

@implementation CatSoundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label.hidden = YES;
    [self score];
}

#pragma mark :- sound effect function
-(void)score{
    
    self.label.hidden = NO;
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
}



- (IBAction)cat:(id)sender {
    AudioServicesPlaySystemSound(soundID);
    
    [NSTimer scheduledTimerWithTimeInterval:1.3 target:self selector:@selector(hideLabel) userInfo:nil repeats:NO];
}

#pragma mark :- Hide Label
-(void)hideLabel {
    
    self.label.hidden = YES;
    
}

@end
