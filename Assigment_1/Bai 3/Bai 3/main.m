//
//  main.m
//  Bai 3
//
//  Created by manhhung on 4/7/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject
-(float) valuePI: (int) number;
@end

@implementation SampleClass
- (float) valuePI:(int)number
{
    float pi = 0;
    for (int i = 1; i <= number; i++) {
        pi += 1.0 * powf(-1, i - 1)/(2 * i - 1);
    }
    pi *= 4;
    return pi;
}

@end

int main(int argc, const char * argv[]) {
    int n;
    do
    {
        NSLog(@"Enter n: ");
        scanf("%d", &n);
        if(n <= 0)
        {
            NSLog(@"Enter n > 0, please!");
        }
    }while (n <= 0);
    
    SampleClass *sampleClass = [[SampleClass alloc]init];
    float pi = [sampleClass valuePI:n];
    NSLog(@"Pi = %f", pi);
    
    return 0;
}
