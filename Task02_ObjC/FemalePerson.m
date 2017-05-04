//
//  FemalePerson.m
//  Task02_ObjC
//
//  Created by Student003 on 5/4/17.
//  Copyright © 2017 Student003. All rights reserved.
//

#import "FemalePerson.h"

@implementation FemalePerson

- (Person *)giveBirthTo:(Class)gender {
    NSLog(@"A person was born!");
    return [[[gender class] new] autorelease];
}

- (void)performGenderSpecificOperation {
    [self giveBirthTo:[Person class]];
}
@end
