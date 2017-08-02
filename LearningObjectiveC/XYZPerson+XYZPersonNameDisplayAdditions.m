//
//  XYZPerson+XYZPersonNameDisplayAdditions.m
//  LearningObjectiveC
//
//  Created by Jonathan Bones on 02.08.17.
//  Copyright © 2017 Jonathan Bones. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

//Declaration of a category
@implementation XYZPerson (XYZPersonNameDisplayAdditions)

-(NSString*)lastNameFirstNameString{
    return [NSString stringWithFormat:@"%@, %@", self.lastName, self.firstName];
}
-(NSString*)shortFirstNameLastNameString{
    return [NSString stringWithFormat:@"%C. %@", [self.firstName characterAtIndex:0], self.lastName];
}

@end
