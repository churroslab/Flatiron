// Car+Protected.m
#import "Car+Protected.h"

@implementation Car (Protected)

- (void)prepareToDrive {
    NSLog(@"Doing some internal work to get the %@ ready to drive",
          [self model]);
}

@end