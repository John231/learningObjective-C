//
//  main.m
//  LearningObjectiveC
//
//  Created by Jonathan Bones on 31.07.17.
//  Copyright © 2017 Jonathan Bones. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Initialise an XYZPerson object
        XYZPerson *john = [[XYZPerson alloc] init];
        [john sayHello];
        [john sayGoodMorning];
        [john sayGoodbye];
        
        //Initialise an XYZShoutingPerson object
        XYZShoutingPerson *mike = [[XYZShoutingPerson alloc] init];
        [mike sayHello];
        
        //Initialise another XYZPerson using the class factory method
        XYZPerson *ned = [XYZPerson person];
        [ned sayHello];
        
        //Checking nil
        XYZPerson *jaime;
        if(!jaime){
            NSLog(@"The object is nil");
        }
    }
    return 0;
}
