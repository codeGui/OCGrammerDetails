//
//  Person+Extension.m
//  NSStringDemo
//
//  Created by 马健Jane on 15/8/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "Person+Extension.h"
#import <objc/runtime.h>
@implementation Person (Extension)
//age
static NSString * ageProperty = @"age";
@dynamic age;

- (NSUInteger)age{
    NSNumber * number = objc_getAssociatedObject(ageProperty, &ageProperty);
    return [number integerValue];
}

- (void)setAge:(NSUInteger)age{
    objc_setAssociatedObject(ageProperty, &ageProperty, @(age),OBJC_ASSOCIATION_ASSIGN);
}

//person
static NSString * personProperty = @"person";
@dynamic person;

- (Person *)person{
    return objc_getAssociatedObject(personProperty, &personProperty);
}

- (void)setPerson:(Person *)person{
    objc_setAssociatedObject(personProperty, &personProperty, person, OBJC_ASSOCIATION_RETAIN);
}

@end
