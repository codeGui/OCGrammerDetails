//
//  Person+Extension.h
//  NSStringDemo
//
//  Created by 马健Jane on 15/8/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "Person.h"

@interface Person (Extension)
@property (nonatomic,assign) NSUInteger age;
@property (nonatomic,strong) Person * person;
@end
//@synthesize和@dynamic分别有什么用
/*
 1、@property有两个对应的词:@synthesize和@dynamic，如果@synthesize和@dynamic都没写，那么默认就是@synthesize var = _var
 2、@synthesize的语义是如果你没有手动实现setter方法和getter方法，那么编译器会自动为你加上这两个方法
 3、dynamic告诉编译器：属性的setter与getter方法由用户自己实现，不自动生成。（当然对于readonly的属性只需提供getter即可）。假如一个属性被声明为@dynamic var，然后你没有提供@setter和@getter，编译的时候没问题，但是当程序运行到instance.var = somevar,由于缺setter方法会导致程序崩溃；或者当运行到someVar = var时，由于缺getter方法同样会导致崩溃。编译时没问题，运行时才执行相应的方法，这就是所谓的动态绑定.
 
 */




