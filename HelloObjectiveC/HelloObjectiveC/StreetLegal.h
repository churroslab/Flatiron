// StreetLegal.h

#import <Foundation/Foundation.h>

@protocol StreetLegal <NSObject> //<NSObject>: That is, any objects conforming to the StreetLegal protocol are required to conform to the NSObject protocol, too.

- (void)signalStop;
- (void)signalLeftTurn;
- (void)signalRightTurn;

@end
