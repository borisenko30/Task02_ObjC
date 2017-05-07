//
//  IDPPersonTests.m
//  Task01_ObjC
//
//  Created by Student003 on 5/5/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPPersonTests.h"

void IDPPersonTest() {
    NSArray *childrenArray = [NSArray arrayOfObjectsWithCount:kIDPMaxArrayLength
                                                 factoryBlock:^ {
                                                     return IDPRandomBool()?[IDPMalePerson object]:[IDPFemalePerson object];
                                                 }];
        for (IDPPerson *person in childrenArray) {
            [person performGenderSpecificOperation];
        }
}
