//
//  main.m
//  ExtentsionDemo
//
//  Created by 马健Jane on 15/8/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person+Extension.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //category增加属性
        Person * firstP = [Person new];
        
        firstP.age = 12;
// 打印结果: firstP.age : 12
        NSLog(@"firstP.age : %ld",firstP.age);
        
        Person * secondP = [Person new];
        secondP.age = 24;
        firstP.person = secondP;
// 打印结果:firstp.person.age : 24
        NSLog(@"firstp.person.age : %ld",firstP.person.age);
        
        //深拷贝和浅拷贝
        NSString * name = @"zhongguo";
        NSMutableString * content = [[NSMutableString alloc] initWithString:@"china"];
        
        NSString * nameC = [name copy];
        NSString * nameM = [name mutableCopy];
        NSString * contentC = [content copy];
        NSString * contentM = [content mutableCopy];
        
        /*打印结果
         name     : __NSCFConstantString   0x1000020f0
         namec    : __NSCFConstantString   0x1000020f0
         nameM    : __NSCFString           0x100300540
         
         content  : __NSCFString           0x100300250
         contentC : NSTaggedPointerString  0x616e69686355
         contentM : __NSCFString           0x100300640
         */
#warning 结论一
        /*
         在非集合类对象中：对immutable对象进行copy操作，是指针复制，mutableCopy操作时内容复制；对mutable对象进行copy和mutableCopy都是内容复制。
         代码表示：
         [immutableObject copy];//浅复制
         [immutableObject mutableCopy];//深复制
         [mutableObject copy];//深复制
         [mutableObject mutableCopy];//深复制
         */
#warning 结论二
        /*
         在集合对象中，对immutable对象进行copy，是指针复制，mutableCopy是内容复制；对mutable对象进行copy和mutableCopy都是内容复制。但是集合对象的内容复制仅限于对象本身，对象元素仍然是指针复制。
         代码表示：
         [immutableObject copy];//浅复制
         [immutableObject mutableCopy];//单层深复制
         [mutableObject copy];//单层深复制
         [mutableObject mutableCopy];//单层深复制
         */
//        [[NSArray alloc] initWithArray:@[] copyItems:YES];
        //集合对象的复制
        Dog * dog = [Dog new];
        dog.age = 10;
        dog.name = @"wangwang";
        
        NSArray * dogArrayI = @[dog];
        
        NSArray * dogArrayCopy = [dogArrayI copy];
        NSArray * dogArrayCopyM = [dogArrayI mutableCopy];
        NSArray * dogArrayI_YES = [[NSArray alloc] initWithArray:dogArrayI copyItems:YES];
        NSArray * dogArrayI_NO = [[NSArray alloc] initWithArray:dogArrayI copyItems:NO];
        
        dog.age = 20;
        dog.name = @"haha";
        
        NSLog(@"dogArrayCopy : %@",dogArrayCopy);
        NSLog(@"dogArrayCopyM ; %@",dogArrayCopyM);
        NSLog(@"dogArrayI_YES : %@",dogArrayI_YES);
        NSLog(@"dogArrayI_NO : %@",dogArrayI_NO);
        
        /*打印结果
          dogArrayCopy : (
         "name : haha age : 20 addr : 0x100400720"
         )
         dogArrayCopyM ; (
         "name : haha age : 20 addr : 0x100500700"
         )
         dogArrayI_YES : (
         "name : wangwang age : 10 addr : 0x10010ec00"
         )
         dogArrayI_NO : (
         "name : haha age : 20 addr : 0x100400720"
         )
         */
    }
    return 0;
}

























