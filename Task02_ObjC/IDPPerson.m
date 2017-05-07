//
//  Person.m
//  Task01_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "IDPPerson.h"

@interface IDPPerson ()

@property (nonatomic, retain) NSMutableArray *mutableChildren;

@end

@implementation IDPPerson

@dynamic children;

- (void)dealloc {
    self.name = nil;
    self.weight = nil;
    self.mutableChildren = nil;
    [super dealloc];
}

- (instancetype)init {
    NSArray *names = @[@"Jack", @"Mike", @"Alex", @"John", @"Anna", @"Jane"];
    self = [super init];
    if (self) {
        self.name = names[IDPRandom([names count])];
        self.weight = [NSNumber numberWithInteger:IDPRandomWithRange(NSMakeRange(kIDPPersonMinWeight, kIDPPersonWeightRange))];
        self.age = IDPRandom(kIDPPersonMaxAge);
        self.mutableChildren = [NSMutableArray array];
    }
    
    return self;
}

- (NSArray *)children {
    return [[self.mutableChildren copy] autorelease];
}

- (void)addChild:(IDPPerson *)child {
    if (child) {
        [self.mutableChildren addObject:child];
    } else {
        NSLog(@"Can not add null object!");
    }
}

- (void)removeLastChild {
    [self.mutableChildren removeLastObject];
}

- (void)removeChildAtIndex:(NSUInteger)index {
    NSMutableArray *children = self.mutableChildren;
    if ([children count] > index) {
        [children removeObjectAtIndex:index];
    } else {
        NSLog(@"Error: wrong index!");
    }
}

- (void)sayHi {
    NSLog(@"Hi! My name is %@ - %@", self.name, self);
    for (IDPPerson *person in self.mutableChildren) {
        [person sayHi];
    }
}

- (void)performGenderSpecificOperation {
    
}

@end
