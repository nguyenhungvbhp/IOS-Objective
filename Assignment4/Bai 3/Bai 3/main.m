//
//  main.m
//  Bai 3
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"
#import "Triangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Circle *myCircle =  [[Circle alloc ]initWithName:0 andFilled:YES andLineColor:0 andR:3];
        NSLog(@"Area of circle is %f", [myCircle getArea]);
        NSLog(@"Circuit of cicle is %f", [myCircle getCircuit]);
        
        Triangle *myTriangle = [[Triangle alloc]initWithName:0 andFilled:YES andLineColor:0 andA:2 andB:4 andC:8];
         NSLog(@"Circuit of Triangle is %f", [myTriangle getCircuit]);
        NSLog(@"Area of Triangle is %f", [myTriangle getArea]);
//        NSLog(@"Circuit of Triangle is %f", [myTriangle getCircuit]);
    }
    return 0;
}
