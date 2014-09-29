//
//  Car.h
//  CarValet
//
//  Created by Charles Coutu-Nadeau on 9/18/14.
//  Copyright (c) 2014 ChurrosLab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property int year;
@property NSString *make;
@property NSString *model;
@property float fuelAmount;
@property (readonly) NSString *carInfo;


- (id)initWithMake:(NSString *)make
             model:(NSString *)model
              year:(int)year
        fuelAmount:(float)fuelAmount;

- (void)printCarInfo;
- (float)fuelAmount;
- (void)setFuelAmount:(float)fuelAmount;
- (int)year;
- (NSString*)make;
- (NSString*)model;

@end
