//
//  ViewController.h
//  CarValet
//
//  Created by Charles Coutu-Nadeau on 9/18/14.
//  Copyright (c) 2014 ChurrosLab. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CarEditViewControllerProtocol.h"

@interface ViewController : UIViewController <CarEditViewControllerProtocol>
@property (weak, nonatomic) IBOutlet UILabel *totalCarsLabel;
@property (weak, nonatomic) IBOutlet UILabel *carNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *carInfoLabel;

- (IBAction)newCar:(UIButton *)sender;
- (IBAction)previousCar:(UIButton *)sender;
- (IBAction)nextCar:(UIButton *)sender;

@end
