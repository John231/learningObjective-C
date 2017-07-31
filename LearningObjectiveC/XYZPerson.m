//
//  JBPerson.m
//  LearningObjectiveC
//
//  Created by Jonathan Bones on 31.07.17.
//  Copyright © 2017 Jonathan Bones. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

@implementation XYZPerson

//method for saying hello
-(void)sayHello {
    [self sayGreeting:@"Hello, World!"];
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

+(id)person{
    XYZPerson *person = [[self alloc] init];
    return person;
}

@end
