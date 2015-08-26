//
//  Person.h
//  NSStringDemo
//
//  Created by 马健Jane on 15/8/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 copy此特质所表达的所属关系与strong类似。然而设置方法并不保留新值，而是将其“拷贝”(copy)。当属性类型为NSString时，经常用此特质来保护其封装性，因为传递给设置方法的新值有可能指向一个NSMutableString类的实例。这个类是NSString的子类，表示一种可修改其值的字符串，此时若是不拷贝字符串，那么设置完属性之后，字符串值就可能会在对象不知情的情况下造人更改。所以，这时就要拷贝一份“不可变”（immutable)的字符串，确保对象中的字符串值不会无意间变动。只要实现属性所用的对象是“可变的”(mutable),就应该在设置属性值时拷贝一份。
 
 */


@interface Person : NSObject
@property (nonatomic,copy) NSMutableString * name;
@end
