//
//  PersonTest.m
//  Task02_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MalePerson.h"
#import "FemalePerson.h"

static void test() {
    NSArray *people = [[NSArray alloc] initWithObjects:
                       [NSObject object:[MalePerson class]],
                       [NSObject object:[FemalePerson class]],
                       [[MalePerson new] autorelease],
                       [[MalePerson new] autorelease],
                       [[FemalePerson new] autorelease],
                       [[FemalePerson new] autorelease],
                       [[FemalePerson new] autorelease],
                       [[MalePerson new] autorelease],
                       [[MalePerson new] autorelease],
                       [[FemalePerson new] autorelease],
                       nil];
    for (Person *p in people) {
        [p performGenderSpecificOperation];
    }
}
