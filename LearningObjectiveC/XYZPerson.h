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
@property XYZPerson *spouse;
@property (readonly, getter=isMarried) BOOL married;
@property (readonly) float weightKg;
@property (readonly) float heightCm;

//=====================
//Class Factory Methods
//=====================
+(id)person;
+(id)personWithName:(NSString*)firstName lastName:(NSString*)lastName;

//==================
//Instance Methods
//==================
-(id)init;
-(id)initWithFirstName:(NSString*)firstName lastName:(NSString*)lastName dateOfBirth:(NSDate*)aDOB;
-(void)sayHello:(NSString*)fullName;
-(void)sayGoodbye;
-(void)sayGoodMorning;
-(void)sayGreeting:(NSString*)greeting;
-(NSString*)fullName;
-(void)createSpouse:(NSString*)firstName lastName:(NSString*)lastName;
-(void)measureWeight;
-(void)measureHeight;
-(void)dealloc;

@end
