//
//  XYZShoutingPerson.m
//  LearningObjectiveC
//
//  Created by Jonathan Bones on 31.07.17.
//  Copyright © 2017 Jonathan Bones. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZShoutingPerson.h"
#import "XYZPerson.h"

@implementation XYZShoutingPerson

//Override the sayGreeting method to convert the greeting to an uppercase string
- (void) sayGreeting:(NSString *)greeting{
    //Convert to uppercase
    NSString *upperCaseGreeting = [greeting uppercaseString];
    //use the superclass sayGreeting method
    [super sayGreeting:upperCaseGreeting];
}

@end
