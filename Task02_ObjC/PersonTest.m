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
#import "NSObject+ObjectCategory.h"
#import "NSObject+IDPCategory.h"

static void test() {
    
    NSMutableArray *people = [NSObject objectsWithCount:10 factoryBlock: ^{
        if ([NSObject randBoolean]) {
            return (Person *)[MalePerson object];
        } else {
            return (Person *)[FemalePerson object];
        }
    }];
    
    for (Person *p in people) {
        [p performGenderSpecificOperation];
    }
}
