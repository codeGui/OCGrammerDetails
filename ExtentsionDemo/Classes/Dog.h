//
//  Dog.h
//  ExtentsionDemo
//
//  Created by 马健Jane on 15/8/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject<NSCopying>
@property (nonatomic,assign) NSUInteger age;
@property (nonatomic,copy) NSString * name;
@end
