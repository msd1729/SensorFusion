//
//  ViewController.h
//  SensorFusion
//
//  Created by smudigon on 5/18/14.
//  Copyright (c) 2014 smudigon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController {


    __weak IBOutlet UISwitch *record;
    __weak IBOutlet UISwitch *nightVision;

    __weak IBOutlet UIImageView *gridimage;
    __weak IBOutlet UISwitch *lockswitch;
    __weak IBOutlet UISwitch *sleepswitch;
    __weak IBOutlet UISlider *slider;
    __weak IBOutlet UILabel *labelbright;
}

@property (weak, nonatomic) IBOutlet UIWebView *webDisplay;



- (IBAction)sliderDidChange:(id)sender;


@end
