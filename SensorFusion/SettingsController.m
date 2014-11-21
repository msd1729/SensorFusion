//
//  SettingsController.m
//  SensorFusion
//
//  Created by smudigon on 5/19/14.
//  Copyright (c) 2014 smudigon. All rights reserved.
//

#import "SettingsController.h"

@interface SettingsController ()

@end

@implementation SettingsController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIScreen *mainScreen = [UIScreen mainScreen];
    
    int brightness = mainScreen.brightness*100;
    slider.value = brightness;
    [slider setValue:slider.value];
    labelbright.text = [NSString stringWithFormat:@"%d", brightness];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderDidChange:(id)sender {
    UIScreen *mainScreen = [UIScreen mainScreen];
    
    mainScreen.brightness = slider.value/100;
    labelbright.text = [NSString stringWithFormat:@"%f", slider.value];
    [slider setValue:slider.value];
    
}
@end
