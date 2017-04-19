//
//  main.m
//  Bai 3
//
//  Created by manhhung on 4/8/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    int n;
    printf("Enter n: ");
    scanf("%d", &n);
    
    NSMutableArray *numbers = [NSMutableArray new];
    
    for(int i = 0; i < n; i++)
    {
        printf("Enter number %d: ", (i + 1));
        int x;
        scanf("%d", &x);
        
        [numbers addObject:[NSNumber numberWithInt:x]];
    }
   // NSArray *names = [NSArray arrayWithObjects:@"John", @"Jane", @"John", nil];
    NSCountedSet *set = [[NSCountedSet alloc] initWithArray:numbers];
    
    for (id item in  set)
    {
        NSLog(@"Number=%@, Count=%lu", item, (unsigned long)[set countForObject:item]);
    }    return 0;
}
