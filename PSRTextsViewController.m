//
//  TextsViewController.m
//  AutoLyaoutExample
//
//  Created by n.shubenkov on 10/10/14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import "PSRTextsViewController.h"

@interface PSRTextsViewController ()

@end

@implementation PSRTextsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.button addTarget:self
                    action:@selector(changeText)
          forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeText
{
    NSString *text = self.someTextLabel.text;
    self.someTextLabel.text = [self.someTextLabel.text stringByAppendingString:text];
    [self.button setTitle:[@"lkwe awoifwea iouaewh fiuowahfiou ewafo we\\ aslv ihaiuov v\\ adpiovsdahv sd\\ asdpiovhdasop vdaoivad;io vsdo adpiovhiops vadhsiop voidsav viopdashv adios" substringToIndex:(arc4random() % 150)]
                 forState:UIControlStateNormal];
    
    [UIView animateWithDuration:3
                     animations:^{
                         [self.view layoutIfNeeded];
                     }];
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
