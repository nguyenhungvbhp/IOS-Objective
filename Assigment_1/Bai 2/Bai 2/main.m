//
//  main.m
//  Bai 2
//
//  Created by manhhung on 4/7/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject
-(int) sumOfDivisible7: (int) lim andNumTow: (int) numberTow;
-(int) sumOfDivisible7Algo2: (int) lim andNumTow: (int)numberTow;
@end

@implementation SampleClass

/* perform algo 1*/
-(int) sumOfDivisible7:(int)lim andNumTow:(int)numberTow
{
    int n = lim/numberTow;
    int result = numberTow * (1 + n) * n / 2;
    return result;
}

/* perform algo 2*/
-(int) sumOfDivisible7Algo2:(int)lim andNumTow:(int)numberTow
{
    int n = lim / numberTow;
    int sum = 0;
    for (int i = 1; i <= n; i++) {
        sum += i * numberTow;
    }
    return  sum;
}

@end

int main(int argc, const char * argv[]) {
    int a, n;
    
    do{
        NSLog(@"Enter a: ");
        scanf("%d", &a);
        NSLog(@"Enter n: ");
        scanf("%d", &n);
        if(a <= 0 || n < a)
        {
            NSLog(@"Please check value a or n !");
        }
    }while (a <= 0 || n < a);
    SampleClass *sampleClass = [[SampleClass alloc] init];
    int sum = [sampleClass sumOfDivisible7:n andNumTow:a];
    NSLog(@"Sum divisible %d to %d is: %d (algo 1)", a, n, sum);
    
    int sum2 = [sampleClass sumOfDivisible7Algo2:n andNumTow:a];
    NSLog(@"Sum divisible %d to %d is: %d (algo 2)", a, n, sum2);
    return 0;
}
