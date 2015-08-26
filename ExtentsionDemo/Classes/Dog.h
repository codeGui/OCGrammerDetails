//
//  Dog.h
//  ExtentsionDemo
//
//  Created by 马健Jane on 15/8/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <Foundation/Foundation.h>

/*什么情况下不会 @synthesize 自动合成?
 1、同时重写了setter和getter时
 2、重写了只读属性的getter时
 3、使用了@dynamic时
 4、在@property中定义的所有属性
 5、在category中定义的所有属性
 6、重载的属性
 */

@interface Dog : NSObject<NSCopying>
@property (nonatomic,assign) NSUInteger age;
@property (nonatomic,copy) NSString * name;

+ (void)walk;

@end
