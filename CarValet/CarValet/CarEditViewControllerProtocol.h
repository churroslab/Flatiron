//
//  CarEditViewControllerProtocol.h
//  CarValet
//
//  Created by Charles Coutu-Nadeau on 9/23/14.
//  Copyright (c) 2014 ChurrosLab. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;

@protocol CarEditViewControllerProtocol <NSObject>

- (Car*) carToEdit;

-(NSInteger) carNumber;

-(void) editedCarUpdated;

@end
