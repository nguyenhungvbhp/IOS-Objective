//
//  main.m
//  Bai 5
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Rectangle *rectangle = [[Rectangle alloc]init];
        [rectangle setWidthAndHeight:10 andSetHeight:3];
        [rectangle draw];
    }
    return 0;
}
