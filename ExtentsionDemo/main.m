//
//  main.m
//  ExtentsionDemo
//
//  Created by 马健Jane on 15/8/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person+Extension.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person * firstP = [Person new];
        
        firstP.age = 12;
        NSLog(@"firstP.age : %ld",firstP.age);
        
        Person * secondP = [Person new];
        secondP.age = 24;
        firstP.person = secondP;
        NSLog(@"firstp.person.age : %ld",firstP.person.age);
        
    }
    return 0;
}
