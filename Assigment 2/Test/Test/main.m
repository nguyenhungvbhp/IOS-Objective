//
//  main.m
//  Bai 4
//
//  Created by manhhung on 4/8/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject
-(void) menu;
-(int) input;
-(void) insert;
-(void) repair;
-(void) delete;
-(void) printList;
-(void) callFunction: (int) fun;
@end

@implementation SampleClass
-(void) menu
{
    printf("======Chose function=====\n");
    printf("1. Input\n");
    printf("2. Insert\n");
    printf("3. Repair\n");
    printf("4. Delete\n");
    printf("5. Print List\n");
}

-(int) input
{
    printf("Input\n");
    return 0;
}

-(void) insert
{
    printf("Insert\n");
}

-(void)repair
{
    printf("Repair\n");
}

-(void)delete
{
    printf("Delete\n");
}

-(void) printList
{
    printf("Print list!\n");
}

-(void) callFunction:(int)fun
{
    switch (fun) {
        case 1:
            [self input];
            break;
        case 2:
            [self insert];
            break;
        case 3:
            [self repair];
            break;
        case 4:
            [self delete];
            break;
        case 5:
            [self printList];
            break;
            
        default:
            break;
    }
}

@end

int main(int argc, const char * argv[]) {
    /* deracle NSMutableDictionary*/
    //    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    char c;
    do{
        SampleClass *sampleClass = [[SampleClass alloc] init];
        [sampleClass menu];
        int fun;
        printf("\nEnter function: ");
        scanf("%d", &fun);
        
        [sampleClass callFunction:fun];
        
        //  [dict setValue:@"Swift" forKey:@"IT1"];
        // NSArray * keys = [dict allKeys];
        
        //        for (NSString *key in keys) {
        //            NSString *value = [dict objectForKey:key];
        //            NSLog(@"Key = %@ and value = %@ ", key, value);
        //        }
        
        printf("Do you want continue(Y/N): ");
        scanf("%s",&c);
    }while (c == 'y' || c != 'Y') ;
    return 0;
}
