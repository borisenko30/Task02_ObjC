//
//  NSObject+ObjectCategory.m
//  Task02_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "NSObject+ObjectCategory.h"

@implementation NSObject (ObjectCategory)


+ (instancetype)object {
    return [[[self alloc] init] autorelease];
}

+ (instancetype)objectsWithCount:(NSInteger)count factoryBlock:(id(^)(void))block{
    NSMutableArray *arr = [NSMutableArray object];
    for (int i = 0; i < count; i++) {
        [arr addObject:block()];
    }
    
    return (NSObject *)arr;
}

@end
