//
//  Dog.m
//  ExtentsionDemo
//
//  Created by 马健Jane on 15/8/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (id)copyWithZone:(NSZone *)zone{
    Dog * dog = [[self class] allocWithZone:zone];
    
    dog.name = [self.name copy];
    dog.age = self.age;
    
    return dog;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"name : %@ age : %ld addr : %p",self.name,self.age,self];
}

@end
