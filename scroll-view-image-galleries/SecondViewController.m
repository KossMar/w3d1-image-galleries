//
//  SecondViewController.m
//  scroll-view-image-galleries
//
//  Created by Mar Koss on 2017-10-16.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *secondScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;
//@property (nonatomic) UIImageView *imageView;


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.secondScrollView.delegate = self;
    
    self.detailImageView.image = self.image;
//    self.imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
//    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
//    self.imageView.image = [UIImage imageNamed:@"Lighthouse-in-Field"];
//    [self.view addSubview:self.imageView];
    

}

- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    return self.detailImageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
