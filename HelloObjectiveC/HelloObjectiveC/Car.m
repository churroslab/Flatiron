// Car.m
#import "Car.h"
#import "Car+Protected.h"

@implementation Car

@synthesize model = _model;

- (void)startEngine {
    NSLog(@"Starting the %@'s engine", _model);
}
- (void)drive {
    [self prepareToDrive];
    NSLog(@"The %@ is now driving", _model);
}
- (void)turnLeft {
    NSLog(@"The %@ is turning left", _model);
}
- (void)turnRight {
    NSLog(@"The %@ is turning right", _model);
}

@end