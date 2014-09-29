//
//  CarEditViewController.h
//  CarValet
//
//  Created by Charles Coutu-Nadeau on 9/23/14.
//  Copyright (c) 2014 ChurrosLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarEditViewControllerProtocol.h"

@class Car;

@interface CarEditViewController : UIViewController

@property (weak, nonatomic) id <CarEditViewControllerProtocol> delegate;
@property (strong, nonatomic) Car *currentCar;
@property (nonatomic) NSInteger carNumber;


@property (weak, nonatomic) IBOutlet UILabel *carNumberLabel;
@property (weak, nonatomic) IBOutlet UITextField *makeField;
@property (weak, nonatomic) IBOutlet UITextField *modelField;
@property (weak, nonatomic) IBOutlet UITextField *yearField;
@property (weak, nonatomic) IBOutlet UITextField *fuelField;


@end
