//
//  NSObject+ObjectCategory.h
//  Task02_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ObjectCategory)

+ (instancetype)object:(Class) objClass;
+ (instancetype)objectsWithCount:(NSInteger)count factoryBlock:(^void)();

@end
