//
//  Person.h
//  LearningObjectiveC
//
//  Created by Jonathan Bones on 31.07.17.
//  Copyright © 2017 Jonathan Bones. All rights reserved.
//

@interface XYZPerson : NSObject

//==================
//Instance variables
//==================
@property (copy) NSString *firstName; //Maintains copies!
@property NSString *lastName;
@property NSDate *dateOfBirth;
@property (weak) NSString *spouse;

//==================
//Instance Methods
//==================

//Method to print name to console
-(void)sayHello:(NSString*)fullName;
-(void)sayGoodbye;
-(void)sayGoodMorning;
-(void)sayGreeting:(NSString*)greeting;
-(NSString*)fullName;
-(id)init;
-(id)initWithFirstName:(NSString*)firstName lastName:(NSString*)lastName dateOfBirth:(NSDate*)aDOB;
-(void)dealloc;
//==================
//Factory Methods
//==================
+(id)person;
+(id)personWithName:(NSString*)firstName lastName:(NSString*)lastName;
@end
