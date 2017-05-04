//
//  Person.h
//  Task02_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (assign) NSString *name;
@property (assign) NSNumber *weight;
@property NSInteger age;
@property (assign) NSMutableArray *children;
@property (nonatomic, readonly) NSArray *childrenArray;

- (void) addChild:(Person *) child;
- (void) removeLastChild;
- (void) removeChildAtIndex:(NSUInteger) index;
- (void) sayHi;
- (void) performGenderSpecificOperation;

@end
