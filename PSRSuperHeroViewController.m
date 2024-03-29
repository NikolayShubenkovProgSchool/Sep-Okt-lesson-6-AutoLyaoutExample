//
//  PSRSuperHeroViewController.m
//  AutoLyaoutExample
//
//  Created by n.shubenkov on 10/10/14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import "PSRSuperHeroViewController.h"

@interface PSRSuperHeroViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *shwarcImage;

@end

@implementation PSRSuperHeroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeCompressionPriority:(id)sender
{
    BOOL stronger = (arc4random() %2) == 0 ?  YES : NO;
    NSLog(@"stronger : %d",stronger);
    NSParameterAssert(self.shwarcImage);
    NSLog(@"priority before: %f",[self.shwarcImage contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisVertical]);
    
    
    [self.shwarcImage setContentCompressionResistancePriority:stronger ? 780 : 600
                                                      forAxis:UILayoutConstraintAxisVertical];
    [self.shwarcImage setContentCompressionResistancePriority:stronger ? 780 : 600
                                                      forAxis:UILayoutConstraintAxisHorizontal];
    
//    [UIView animateWithDuration:0.25
//                     animations:^{
//                         //иногда помимо layoutifneded нужно добавить такой метод
//                         [self.view updateConstraintsIfNeeded];
//                         [self.view layoutIfNeeded];
//                     }];
    //
    [UIView animateWithDuration:0.8
                          delay:0
         usingSpringWithDamping:0.4
          initialSpringVelocity:0.5
                        options:UIViewAnimationOptionCurveEaseIn animations:^{
                            
                            [self.view updateConstraintsIfNeeded];
                            [self.view layoutIfNeeded];
                        } completion:nil];
    NSLog(@"priority after: %f",[self.shwarcImage contentCompressionResistancePriorityForAxis:UILayoutConstraintAxisVertical]);
    
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
