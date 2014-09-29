//
//  ViewController.m
//  CarValet
//
//  Created by Charles Coutu-Nadeau on 9/18/14.
//  Copyright (c) 2014 ChurrosLab. All rights reserved.
//

#import "ViewController.h"
#import "CarEditViewController.h"
#import "Car.h"

@implementation ViewController {
    NSMutableArray *arrayOfCars;
    NSInteger displayedCarIndex;
}


#pragma mark - View Lifecycle

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"EditSegue"]) {
        CarEditViewController *nextController;
        
        nextController = segue.destinationViewController;
        nextController.delegate = self;
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arrayOfCars = [[NSMutableArray alloc] init];
    [self newCar:nil];
    displayedCarIndex = 0;
    [self displayCurrentCarInfo];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    Car *myCar = [[Car alloc] init];
    [myCar printCarInfo];
    
    myCar.make = @"Ford";
    myCar.model = @"Escape";
    myCar.year = 2014;
    myCar.fuelAmount = 10.0f;
    
    [myCar printCarInfo];
    
    Car *otherCar = [[Car alloc] initWithMake:@"Honda"
                                        model:@"Accord"
                                         year:2010
                                   fuelAmount:12.5f];
    [otherCar printCarInfo];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateLabel:(UILabel *)theLabel
     withBaseString:(NSString *)baseString
              count:(NSInteger)theCount {
    NSString *newText;
    newText = [NSString stringWithFormat:@"%@: %d", baseString, theCount];
    
    theLabel.text = newText;
}

- (void)displayCurrentCarInfo {
    Car *currentCar;
    currentCar = [arrayOfCars objectAtIndex:displayedCarIndex];
    
    self.carInfoLabel.text = [currentCar carInfo];
    
    [self updateLabel:self.carNumberLabel withBaseString:@"Car Number" count:displayedCarIndex +1];
}

- (void) changeDisplayedCar:(NSInteger)newIndex {
    if (newIndex < 0) { //Make sure that the current index is valid (no negatives)
        newIndex = 0;
    } else if (newIndex >= [arrayOfCars count]) { //If new index is beyond the end of the array, set to last element
        newIndex = [arrayOfCars count] - 1;
    }
    
    if (displayedCarIndex != newIndex) { //Update the display only if the index has changed
        displayedCarIndex = newIndex;
        [self displayCurrentCarInfo];
    }
}

- (Car *) carToEdit{
    return arrayOfCars[displayedCarIndex];
}

- (NSInteger) carNumber {
    return displayedCarIndex + 1;
}

- (void) editedCarUpdated {
    [self displayCurrentCarInfo];
    NSLog(@"\neditedCarUpdated called!\n");
}


- (IBAction)newCar:(UIButton *)sender {
    
    Car *newCar = [[Car alloc] init];
    
    [arrayOfCars addObject:newCar];
    
    [self updateLabel:self.totalCarsLabel withBaseString:@"Total Cars" count:[arrayOfCars count]];
}

- (IBAction)previousCar:(UIButton *)sender {
    [self changeDisplayedCar:displayedCarIndex-1];
}

- (IBAction)nextCar:(UIButton *)sender {
    [self changeDisplayedCar:displayedCarIndex+1];
}

-(IBAction)editingDone:(UIStoryboardSegue *)segue {
    [self displayCurrentCarInfo];
}

@end