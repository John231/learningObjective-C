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
@property (readonly) NSString *firstName;
@property (readonly) NSString *lastName;
@property NSDate *dateOfBirth;

//==================
//Instance Methods
//==================

//Method to print name to console
-(void)sayHello;
-(void)sayGoodbye;
-(void)sayGoodMorning;
-(void)sayGreeting:(NSString*)greeting;

//==================
//Factory Methods
//==================
+(id)person;

@end
