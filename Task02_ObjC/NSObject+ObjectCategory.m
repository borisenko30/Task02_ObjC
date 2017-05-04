//
//  NSObject+ObjectCategory.m
//  Task02_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "NSObject+ObjectCategory.h"

@implementation NSObject (ObjectCategory)


+ (instancetype)object:(Class) objClass {
    return [[[[objClass class] alloc] init] autorelease];
}

+ (instancetype)objectsWithCount:(NSInteger)count factoryBlock(^void)(){
    
}

@end
