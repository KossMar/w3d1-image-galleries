//
//  ViewController.m
//  scroll-view-image-galleries
//
//  Created by Mar Koss on 2017-10-16.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic) UIPageControl *pageControl;
@property (nonatomic) UIImageView *lighthouseOne;
@property (nonatomic) UIImageView *lighthouseTwo;
@property (nonatomic) UIImageView *lighthouseThree;

@end

@implementation ViewController

- (void)viewDidLoad {
    

//    self.scrollView.alwaysBounceHorizontal = NO;
    
    [super viewDidLoad];
    
    self.scrollView.delegate = self;

    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectZero];
    self.pageControl.translatesAutoresizingMaskIntoConstraints = NO;
    self.pageControl.numberOfPages = 2;
    self.pageControl.currentPage = 0;
    self.pageControl.backgroundColor = [UIColor clearColor];
    [self.pageControl addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.pageControl];
    
    [NSLayoutConstraint constraintWithItem:self.pageControl
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeading
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // bottom
    [NSLayoutConstraint constraintWithItem:self.pageControl
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:0.0].active = YES;
    // height
    [NSLayoutConstraint constraintWithItem:self.pageControl
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil
                                 attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1.0
                                  constant:20.0].active = YES;
    // width
    [NSLayoutConstraint constraintWithItem:self.pageControl
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0.0].active = YES;
    
    
    
    self.lighthouseOne = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.lighthouseOne.translatesAutoresizingMaskIntoConstraints = NO;
    UIImage * image = [UIImage imageNamed:@"Lighthouse-in-Field"];
    self.lighthouseOne.image = image;
    [self.lighthouseOne setContentMode:UIViewContentModeScaleAspectFit];
    self.lighthouseOne.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap =  [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapping:)];
    [singleTap setNumberOfTapsRequired:1];
    [self.lighthouseOne addGestureRecognizer:singleTap];
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
    self.lighthouseTwo.userInteractionEnabled = YES;
    [self.lighthouseTwo setContentMode:UIViewContentModeScaleAspectFit];
    UITapGestureRecognizer *singleTap2 =  [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapping:)];
    [singleTap2 setNumberOfTapsRequired:1];
    [self.lighthouseTwo addGestureRecognizer:singleTap2];
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
    self.lighthouseThree.userInteractionEnabled = YES;
    UITapGestureRecognizer *singleTap3 =  [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapping:)];
    [singleTap3 setNumberOfTapsRequired:1];
    [self.lighthouseThree addGestureRecognizer:singleTap3];
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
    
}
    
//- (IBAction)changePage:(id)sender {
//    CGFloat x = self.pageControl.currentPage * self.scrollView.frame.size.width;
//    [self.scrollView setContentOffset:CGPointMake(x, 0) animated:YES];
//}
//
//-(void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView  {
//    NSInteger pageNumber = roundf(scrollView.contentOffset.x / (scrollView.frame.size.width));
//    self.pageControl.currentPage = pageNumber;
//}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {

    CGFloat pageWidth = self.scrollView.frame.size.width;
    float fractionalPage = (self.scrollView.contentOffset.x / pageWidth);
    NSInteger page = lround(fractionalPage);
    self.pageControl.currentPage = page;

}


-(void)singleTapping:(UIGestureRecognizer*)recognizer {
    
    
    [self performSegueWithIdentifier:@"detailViewSegue" sender:recognizer];
    
    NSLog(@"image clicked");
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIGestureRecognizer *)sender {
    if([segue.identifier isEqualToString:@"detailViewSegue"]) {
     //   UIGestureRecognizer *gestureRecognizer = (UIGestureRecognizer *) sender;
        UIImageView *imageView = (UIImageView *) sender.view;

        SecondViewController *controller = (SecondViewController *)segue.destinationViewController;
        controller.image = imageView.image;
    }
}

-(void)changePage:(UIPageControl*)sender{
    
}
@end
