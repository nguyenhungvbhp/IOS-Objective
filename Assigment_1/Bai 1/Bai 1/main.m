//
//  main.m
//  Assignment1
//
//  Created by manhhung on 4/6/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject
-(NSString *) dateOfWeek;
-(NSString *) dateOfWeek2;
@end

@implementation SampleClass
-(NSString *) dateOfWeek
{
    
    NSString *result;
    
    int day;
    NSLog(@"Enter value of day: ");
    scanf("%d", &day);
    
    switch (day) {
        case 1:
            result = @"Monday";
            break;
        case 2:
            result = @"Tuesday";
            break;
        case 3:
            result = @"Wednesday";
            break;
        case 4:
            result = @"Thursday";
            break;
        case 5:
            result = @"Friday";
            break;
        case 6:
            result = @"Saturday";
            break;
        case 7:
            result = @"Sunday";
            break;
        default:
            result = @"None";
            break;
    }
    
    return result;
}

-(NSString *) dateOfWeek2
{
    NSArray *arrayDay = @[@"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", @"Sunday"];
    int day;
    do{
        NSLog(@"Enter value of day: ");
        scanf("%d", &day);
        if(day < 1 || day > 7)
        {
            NSLog(@"Enter again value of day. Please!");
        }
        
    }while (day < 1 || day > 7);
    return arrayDay[day - 1];
}

@end

int main(int argc, const char * argv[]) {
    SampleClass *sampleClass = [[SampleClass alloc] init];
    
    NSString *day = [sampleClass dateOfWeek2];
    NSLog(@"It's %@", day);
    
    return 0;
}
