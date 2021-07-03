//
//  CatSoundViewController.h
//  MyObjCApp
//
//  Created by wanderer on 02/07/21.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>



@interface CatSoundViewController : UIViewController{
    SystemSoundID soundID;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)cat:(id)sender;

@end

