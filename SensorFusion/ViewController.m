//
//  ViewController.m
//  SensorFusion
//
//  Created by smudigon on 5/18/14.
//  Copyright (c) 2014 smudigon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(strong,nonatomic) NSString *urladdress;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _urladdress = @"http://192.168.1.100";
    NSURL *url = [NSURL URLWithString:_urladdress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    self.webDisplay.scalesPageToFit = YES;
    
    [_webDisplay loadRequest:requestObj];
    
    UIScreen *mainScreen = [UIScreen mainScreen];
    
    int brightness = mainScreen.brightness*100;
    slider.value = brightness;
   labelbright.text = [NSString stringWithFormat:@"%d", brightness];
    
    if (sleepswitch.on) {
        [[UIApplication sharedApplication] setIdleTimerDisabled:NO];
    }
    else{
    [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
    }

   UIImage *aguirreImage = [UIImage imageNamed:@"coin-grid.gif"];
    gridimage.image = aguirreImage;
    gridimage.alpha = 0.1;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSUInteger) supportedInterfaceOrientations {
    // Return a bitmask of supported orientations.
    if (lockswitch.on) {
      return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
    }
    
    else {
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown|UIInterfaceOrientationLandscapeLeft|UIInterfaceOrientationLandscapeRight;
    }
    
}

//- (UIInterfaceOrientation) preferredInterfaceOrientationForPresentation {
    // Return the orientation you'd prefer - this is what it launches to. The
    // user can still rotate. You don't have to implement this method, in which
    // case it launches in the current orientation
    //return UIInterfaceOrientationPortrait;
//}


- (IBAction)sliderDidChange:(id)sender {
    UIScreen *mainScreen = [UIScreen mainScreen];
    
    
    mainScreen.brightness = slider.value/100;
    labelbright.text = [NSString stringWithFormat:@"%f", slider.value];
    
    
}
@end
