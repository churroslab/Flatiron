// main.m
#import <Foundation/Foundation.h>
#import "Car.h"
#import "Car+Maintenance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *porsche = [[Car alloc] init];
        porsche.model = @"Porsche 911 Turbo";
        Car *ford = [[Car alloc] init];
        ford.model = @"Ford F-150";
        
        // "Standard" functionality from Car.h
        [porsche startEngine];
        [porsche drive];
        [porsche turnLeft];
        [porsche turnRight];
        
        // Additional methods from Car+Maintenance.h
        if ([porsche needsOilChange]) {
            [porsche changeOil];
        }
        [porsche rotateTires];
        [porsche jumpBatteryUsingCar:ford];
    }
    return 0;
}