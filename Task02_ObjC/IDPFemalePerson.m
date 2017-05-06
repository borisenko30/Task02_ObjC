//
//  IDPFemalePerson.m
//  Task02_ObjC
//
//  Created by Admin on 06.05.17.
//  Copyright (c) 2017 Student003. All rights reserved.
//

#import "IDPFemalePerson.h"

@implementation IDPFemalePerson

- (IDPPerson *)childCreate {
    IDPPerson *person = [IDPPerson object];
    NSLog(@"A new person was born!");
    
    return person;
}

- (void)performGenderSpecificOperation {
    [self childCreate];
}

@end
