//
//  ViewController.h
//  MyObjCApp
//
//  Created by wanderer on 02/07/21.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController{
    SystemSoundID soundID;
    NSString *word;
    NSString *name;
}
@property (weak, nonatomic) IBOutlet UILabel *setTitleLabel;

- (IBAction)pressMeButton:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *changeTitleLabel;
- (IBAction)moveToNextButton:(id)sender;

@end

