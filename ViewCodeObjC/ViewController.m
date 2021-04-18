//
//  ViewController.m
//  ViewCodeObjC
//
//  Created by Adolpho Piazza on 17/04/21.
//

#import "ViewController.h"

@interface ViewController () {
    UILabel *helloWorldLabel;
    UIButton *touchMeButton;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
    [self setupHelloWorldLabel];
    [self setupTouchMeButton];
}

- (void)setupView {
    self.title = @"ViewCode with Objective-C";
}

- (void)setupHelloWorldLabel {
    helloWorldLabel = [[UILabel alloc] init];
    [helloWorldLabel setTranslatesAutoresizingMaskIntoConstraints: NO];
    [self.view addSubview: helloWorldLabel];
    
    [helloWorldLabel setText: @"Hello Objective-C with ViewCode!"];
    [helloWorldLabel setFont: [UIFont systemFontOfSize: 30]];
    [helloWorldLabel setTextColor: [UIColor labelColor]];
    [helloWorldLabel setTextAlignment: NSTextAlignmentCenter];
    [helloWorldLabel setNumberOfLines: 0];
    
    [[helloWorldLabel.topAnchor
      constraintEqualToAnchor: self.view.safeAreaLayoutGuide.topAnchor constant: 100] setActive: YES];
    [[helloWorldLabel.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant: 15] setActive: YES];
    [[helloWorldLabel.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor constant: -15] setActive: YES];
}

- (void)setupTouchMeButton {
    touchMeButton = [[UIButton alloc] init];
    [touchMeButton setTranslatesAutoresizingMaskIntoConstraints: NO];
    [self.view addSubview: touchMeButton];
    
    [touchMeButton setTitle: @"Touch Me" forState: UIControlStateNormal];
    [touchMeButton setTitleColor: [UIColor labelColor] forState: UIControlStateNormal];
    [[touchMeButton titleLabel] setFont: [UIFont systemFontOfSize: 25 weight: UIFontWeightSemibold]];
    [touchMeButton setBackgroundColor: [UIColor secondarySystemBackgroundColor]];
    [[touchMeButton layer] setCornerRadius: 10];
    [touchMeButton addTarget: self action: @selector(buttonAction) forControlEvents: UIControlEventTouchUpInside];
    
    [[touchMeButton.centerYAnchor constraintEqualToAnchor: self.view.centerYAnchor] setActive: YES];
    [[touchMeButton.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor constant: 15] setActive: YES];
    [[touchMeButton.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor constant: -15] setActive: YES];
    [[touchMeButton.heightAnchor constraintEqualToConstant: 50] setActive: YES];
}

- (void)buttonAction {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"View Code"
                                                  message: @"Objective-C can be fun!"
                                                  preferredStyle: UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle: @"YES" style: UIAlertActionStyleDefault handler: nil];
    [alert addAction: action];
    [self.navigationController presentViewController: alert animated: YES completion: nil];
}

@end
