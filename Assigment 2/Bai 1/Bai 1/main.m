//
//  main.m
//  Bai 1
//
//  Created by manhhung on 4/7/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject

/*declare function random number integer */
-(int) getRandomInteger: (int)min and: (int) max;
@end

@implementation SampleClass

/*Thuc hien ham tra ve 1 gia tri random trong khoang min -> max */
-(int) getRandomInteger:(int)min and:(int)max
{
    int rd =  arc4random_uniform(max + 1 -  min)  +  min;
    return rd;
}

@end

int main(int argc, const char * argv[]) {

    int min, max;
    do
    {
        printf("Enter min: ");
        scanf("%d", &min);
        
        printf("Enter max: ");
        scanf("%d", &max);
    
        if(min > max)
        {
            printf("Input is Invalid!\n");
        }
    }while(min > max);
    SampleClass *sampleClass = [[SampleClass alloc] init];

    int random = [sampleClass getRandomInteger:min and :max];
    printf("Value random is: %d\n", random);
    return 0;
}
