//
//  ViewController.m
//  scroll-view-image-galleries
//
//  Created by Mar Koss on 2017-10-16.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic) UIImageView *lighthouseOne;
@property (nonatomic) UIImageView *lighthouseTwo;
@property (nonatomic) UIImageView *lighthouseThree;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lighthouseOne = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.lighthouseOne.translatesAutoresizingMaskIntoConstraints = NO;
    UIImage * image = [UIImage imageNamed:@"Lighthouse-in-Field"];
    self.lighthouseOne.image = image;
    [self.lighthouseOne setContentMode:UIViewContentModeScaleAspectFit];
    [self.scrollView addSubview:self.lighthouseOne];
    
    

    // top
    [NSLayoutConstraint constraintWithItem:self.lighthouseOne
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.scrollView
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // bottom
    [NSLayoutConstraint constraintWithItem:self.lighthouseOne
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.scrollView
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // height
    [NSLayoutConstraint constraintWithItem:self.lighthouseOne
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // width
    [NSLayoutConstraint constraintWithItem:self.lighthouseOne
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0.0].active = YES;
    
    // leading
    [NSLayoutConstraint constraintWithItem:self.lighthouseOne
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.scrollView
                                 attribute:NSLayoutAttributeLeading
                                multiplier:1.0
                                  constant:0.0].active = YES;
    
    self.lighthouseTwo = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.lighthouseTwo.translatesAutoresizingMaskIntoConstraints = NO;
    self.lighthouseTwo.image = [UIImage imageNamed:@"Lighthouse-night"];
    [self.lighthouseTwo setContentMode:UIViewContentModeScaleAspectFit];
    [self.scrollView addSubview:self.lighthouseTwo];
    
    

    // top
    [NSLayoutConstraint constraintWithItem:self.lighthouseTwo
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.scrollView
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // bottom
    [NSLayoutConstraint constraintWithItem:self.lighthouseTwo
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.scrollView
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // height
    [NSLayoutConstraint constraintWithItem:self.lighthouseTwo
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // width
    [NSLayoutConstraint constraintWithItem:self.lighthouseTwo
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // leading
    [NSLayoutConstraint constraintWithItem:self.lighthouseTwo
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.lighthouseOne
                                 attribute:NSLayoutAttributeTrailing
                                multiplier:1.0
                                  constant:0.0].active = YES;
//    // trailing
//    [NSLayoutConstraint constraintWithItem:self.lighthouseTwo
//                                 attribute:NSLayoutAttributeTrailing
//                                 relatedBy:NSLayoutRelationEqual
//                                    toItem:self.lighthouseThree
//                                 attribute:NSLayoutAttributeLeading
//                                multiplier:1.0
//                                  constant:0.0].active = YES;
    
    self.lighthouseThree = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.lighthouseThree.translatesAutoresizingMaskIntoConstraints = NO;
    self.lighthouseThree.image = [UIImage imageNamed:@"Lighthouse"];
    [self.lighthouseThree setContentMode:UIViewContentModeScaleAspectFit];
    [self.scrollView addSubview:self.lighthouseThree];
    

    // top
    [NSLayoutConstraint constraintWithItem:self.lighthouseThree
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.scrollView
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // bottom
    [NSLayoutConstraint constraintWithItem:self.lighthouseThree
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.scrollView
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // height
    [NSLayoutConstraint constraintWithItem:self.lighthouseThree
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // width
    [NSLayoutConstraint constraintWithItem:self.lighthouseThree
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0.0].active = YES;

    // leading
    [NSLayoutConstraint constraintWithItem:self.lighthouseThree
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.lighthouseTwo
                                 attribute:NSLayoutAttributeTrailing
                                multiplier:1.0
                                  constant:0.0].active = YES;
    
    // trailing
    [NSLayoutConstraint constraintWithItem:self.lighthouseThree
                                 attribute:NSLayoutAttributeTrailing
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.scrollView
                                 attribute:NSLayoutAttributeTrailing
                                multiplier:1.0
                                  constant:0.0].active = YES;
    

//    [[]

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
