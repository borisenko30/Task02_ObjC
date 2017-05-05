//
//  Person.m
//  Task02_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "Person.h"
#import "NSObject+IDPCategory.h"
#import "NSObject+ObjectCategory.h"

@interface Person ()

@property (nonatomic, readwrite) NSMutableArray        *childrenArray;

@end

@implementation Person

@dynamic children;

- (void)dealloc {
    self.name = nil;
    self.weight = nil;
    self.childrenArray = nil;
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = @"John Doe";
        self.weight = @100;
        self.age = 25;
        self.childrenArray = [NSMutableArray array];
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)name weight:(NSNumber *)weight age:(NSUInteger)age{
    self = [super init];
    if (self) {
        self.name = name;
        self.weight = weight;
        self.age = age;
        self.childrenArray = [NSMutableArray array];
    }
    
    return self;
}

- (NSArray *)initArrayWithObjectsCount:(NSUInteger) count {
    NSArray *names = @[@"Jack", @"Mike", @"Alex", @"John", @"Anna", @"Jane"];
    NSMutableArray *arr = self.childrenArray;
    arr = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        Person *p = [Person object];
        NSString *name = names[[NSObject randUpTo:(uint32_t)names.count]];
        NSNumber *weight = [NSNumber numberWithInteger:[NSObject randStartWith:50 range:100]];
        NSUInteger age = [NSObject randStartWith:1 range:100];
        [p initWithName:name weight:weight age:age];
        [arr addObject:p];
    }
    self.childrenArray = arr;
    
    return arr;
}

- (NSArray *)children {
    return [[self.childrenArray copy] autorelease];
}

- (void)addChild:(Person *)child {
    [self.childrenArray addObject:child];
    
}

- (void)removeLastChild {
    [self.childrenArray removeLastObject];
}

- (void)removeChildAtIndex:(NSUInteger)index {
    NSMutableArray *arr = self.childrenArray;
    if (arr.count > index) {
        [arr removeObjectAtIndex:index];
    } else {
        NSLog(@"Error: wrong index!");
    }
}

- (void)sayHi {
    NSLog(@"Hi! My name is %@ -- %@", self.name, self);
    for (Person *p in self.childrenArray) {
        [p sayHi];
    }
}

- (void)performGenderSpecificOperation {
    
}

@end

/*
@implementation Person

@dynamic childrenArray;

- (void)dealloc {
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = @"John Doe";
        self.weight = @100;
        self.age = 25;
    }
    
    return self;
}

- (NSArray *)childrenArray {
    return [[[[[NSArray alloc] initWithArray:self.children] autorelease] copy] autorelease];
}

- (void)addChild:(Person *)child {
    if (self.children) {
        [self.children addObject:child];
    } else {
        self.children = [[NSMutableArray new] autorelease];
        [self.children addObject:child];
    }
    
}

- (void)removeLastChild {
    [self.children removeLastObject];
}

- (void)removeChildAtIndex:(NSUInteger)index {
    [self.children removeObjectAtIndex:index];
}

- (void)sayHi {
    NSLog(@"Hi! My name is %@ -- %@", self.name, self);
    if (self.children) {
        for (Person *p in self.children) {
            [p sayHi];
        }
    }
}

- (void)performGenderSpecificOperation {
    
}


@end
*/
