//
//  JBPerson.m
//  LearningObjectiveC
//
//  Created by Jonathan Bones on 31.07.17.
//  Copyright © 2017 Jonathan Bones. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

//Class extension for height and weight
@interface XYZPerson ()

@property (readwrite) float weightKg;
@property (readwrite) float heightCm;

@end

@implementation XYZPerson

//=====================
//Class Factory Methods
//=====================
+(id)person{
    XYZPerson *person = [[self alloc] init];
    return person;
}

+(id)personWithName:(NSString *)firstName lastName:(NSString *)lastName{
    
    XYZPerson *personWithName = [[self alloc] init];
    if(personWithName){
        //Two ways of setting first and last names
        [personWithName setFirstName:firstName];
        personWithName.lastName = lastName;
    }
    return personWithName;
}

//=====================
//Instance Methods
//=====================

//Overridden init method
-(id)init{
    return [self initWithFirstName:nil lastName:nil dateOfBirth:nil];
}
//Designated initialiser
-(id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName dateOfBirth:(NSDate *)aDOB{
    
    //Call the superclass initialisation method
    self = [super init];
    
    //Ensure object is not nil before assigning instance variables
    if(self){
        _firstName = firstName;
        _lastName = lastName;
        _dateOfBirth = aDOB;
    }
    return self;
}

-(void)sayHello:(NSString *)fullName{
    NSMutableString *helloGreeting = [NSMutableString stringWithString:@"Hello "];
    [helloGreeting appendString: fullName];
    [self sayGreeting:helloGreeting];
}
-(void)sayGoodbye{
    [self sayGreeting:@"Goodbye!"];
}
-(void)sayGoodMorning{
    [self sayGreeting:@"Good Morning!"];
}
//General method to print a greeting to the console
-(void)sayGreeting:(NSString *)greeting{
    NSLog(@"%@",greeting);
}
//Method which returns the full name of an XYZPerson object
-(NSString*)fullName{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}
-(void)createSpouse:(NSString *)firstName lastName:(NSString *)lastName{
    //Set the married variable to true
    _married = TRUE;
    _spouse = [[XYZPerson alloc] init];
    _spouse.firstName = firstName;
    _spouse.lastName = lastName;
    NSLog(@"Spouse created with name: %@",[_spouse fullName]);
}

-(void)measureWeight{
    [self setWeightKg:65.3];
}
-(void)measureHeight{
    [self setHeightCm:145.2];
}

//Override dealloc method to provide visibility of deallocation in main execution loop
-(void)dealloc{
    NSLog(@"XYZPerson is being deallocated");
}

@end
