//
//  ViewController.m
//  Blur Image
//
//  Created by Jay Versluis on 11/01/2015.
//  Copyright (c) 2015 Pinkstone Pictures LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // show image
    self.imageView.image = [UIImage imageNamed:@"boat6"];

    // create blur effect
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];

    // create vibrancy effect
    UIVibrancyEffect *vibrancy = [UIVibrancyEffect effectForBlurEffect:blur];

    // add blur to an effect view
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc]initWithEffect:blur];
    effectView.frame = self.view.frame;

    // add vibrancy to yet another effect view
    UIVisualEffectView *vibrantView = [[UIVisualEffectView alloc]initWithEffect:vibrancy];
    effectView.frame = self.view.frame;

    // add both effect views to the image view
    [self.imageView addSubview:effectView];
    [self.imageView addSubview:vibrantView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
