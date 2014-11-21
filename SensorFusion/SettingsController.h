//
//  SettingsController.h
//  SensorFusion
//
//  Created by smudigon on 5/19/14.
//  Copyright (c) 2014 smudigon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsController : UIViewController{


    __weak IBOutlet UISlider *slider;
    __weak IBOutlet UILabel *labelbright;
}
- (IBAction)sliderDidChange:(id)sender;


@end
