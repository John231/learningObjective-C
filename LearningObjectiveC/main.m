//
//  main.m
//  LearningObjectiveC
//
//  Created by Jonathan Bones on 31.07.17.
//  Copyright © 2017 Jonathan Bones. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"
#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Initialise an XYZPerson object
        XYZPerson *john = [[XYZPerson alloc] init];
        [john sayHello: @"John Smith"];
        [john sayGoodMorning];
        [john sayGoodbye];
        john = nil; //Deallocate object
        
        //Initialise an XYZShoutingPerson object
        XYZShoutingPerson *mike = [[XYZShoutingPerson alloc] init];
        [mike sayHello:@"Mike Snow"];
        mike = nil;
        
        //Initialise another XYZPerson using the class factory method
        XYZPerson *ned = [XYZPerson person];
        [ned sayHello:@"Ned Stark"];
        ned = nil;
        
        //Checking nil
        XYZPerson *jaime;
        if(!jaime){
            NSLog(@"The object is nil");
        }
        
        //Mutable string for the first name
        NSMutableString *tyrionFirstName = [NSMutableString stringWithFormat:@"Tyrion"];
        //Testing new init method
        XYZPerson *tyrion = [XYZPerson personWithName:tyrionFirstName lastName:@"Lannister"];
        //Append suffix to Tyrion's name
        [tyrionFirstName appendString:@"ny"];
        [tyrion sayHello: [tyrion fullName]];
        
        //Create spouse for Tyrion
        [tyrion createSpouse:@"Sansa" lastName:@"Stark"];
        [tyrion.spouse sayHello:[tyrion.spouse fullName]];
        
        NSLog(@"Is %@ married? %@", tyrion.firstName, (tyrion.isMarried ? @"Yes" : @"No"));
        NSLog(@"Tyrion is married to %@", [tyrion.spouse fullName]);
        
        //This will deallocate both tyrion and spouse!
        tyrion = nil;
        
        //Example involving a weak variable
        //NSString *__weak weakTheonFirstName = [NSString stringWithFormat:@"Theon"];
        NSString *__strong strongTheonFirstName = [NSString stringWithFormat:@"Theon"];
        XYZPerson *theon = [XYZPerson personWithName:strongTheonFirstName lastName:@"Greyjoy"];
        [theon sayHello:[theon fullName]];
        //NSLog(@"Weak reference: %@",weakTheonFirstName);
        
        //NSLog(@"Weak: %@, Strong: %@",weakTheonFirstName,strongTheonFirstName);
        theon = nil;
        
        XYZPerson *dave = [XYZPerson personWithName:@"Dave" lastName:@"Smith"];
        [dave sayHello:[dave fullName]];
        //Make use of the shortened first name method in the XYZPersonNameDisplayAdditions category
        NSLog(@"Shortened first name: %@", [dave shortFirstNameLastNameString]);
        [dave measureWeight];
        [dave measureHeight];
        NSLog(@"%@ is %.01fcm tall and weighs %.01fkg",dave.firstName, dave.heightCm, dave.weightKg);
    }
    return 0;
}
