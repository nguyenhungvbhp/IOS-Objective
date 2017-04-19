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
-(void) insert:(NSMutableArray *) myMutableArray;
-(void) repair: (NSMutableArray *) myMutableArray;
-(void) delete: (NSMutableArray *)myMutableArray;
-(void) printList: (NSMutableArray *) myMutableArray;
-(void) sortSubject: (NSMutableArray *) myMutableArray;
@end

@implementation SampleClass
-(void) menu
{
    printf("\n======Chose function=====\n");
    printf("1. Insert Subject\n");
    printf("2. Repair\n");
    printf("3. Delete\n");
    printf("4. Print List\n");
    printf("5. Sort Code Subject\n");
}


/* TODO: Add a subject to list*/
-(void) insert: (NSMutableArray *) myMutableArray
{
    int n;
    printf("Enter number subject: ");
    scanf("%d", &n);
    for (int i = 1; i <= n; i++) {
    
    /* Enter code subject*/
    char codeSubject[40];
    printf("Enter code subject %d: ", i);
    scanf("%39s", codeSubject);
    /* convert array char to NSString*/
    NSString *code = [NSString stringWithCString:codeSubject encoding:NSUTF8StringEncoding];
    
    
    /* Enter name subject*/
    char nameSubject[40];
    printf("Enter name subject %d: ", i);
    scanf("%39s", nameSubject);
    /* convert array char to NSString*/
    NSString *name = [NSString stringWithCString:nameSubject encoding:NSUTF8StringEncoding ];
    
    /*Check course exitst*/
    for(NSMutableDictionary *myMutableDictionary in myMutableArray)
    {
        if([myMutableDictionary[@"code"] isEqualToString:code] ||
           [myMutableDictionary[@"subject"] isEqualToString: name])
            {
                NSLog(@"Course code key already exists");
                continue;
//                break;
            }
    }
    
    NSMutableDictionary *myDict = [[NSMutableDictionary alloc] init];
    myDict[@"code"] = code;
    myDict[@"subject"] = name;
    
    [myMutableArray addObject:myDict];
        
    }
    
}

/* TODO: Fix a subject*/
-(void)repair: (NSMutableArray *) myMutableArray
{
    char codeObject[40];
    printf("Enter code Subject want repair: ");
    fflush(stdin);
    scanf("%39s", codeObject);
    NSString *code = [NSString stringWithCString:codeObject encoding:NSUTF8StringEncoding];
    int i = 0;
    for(NSMutableDictionary *myMutableDictinary in myMutableArray)
    {
        if ([myMutableDictinary[@"code"] isEqualToString: code]) {
           // [ myMutableArray removeObject:myMutableDictinary];
            char nameSubject[40];
            printf("Enter Subject repair: ");
            scanf("%39s", nameSubject);
            NSString *name = [NSString stringWithCString:nameSubject encoding: NSUTF8StringEncoding];
            NSLog(@"NAME: %@", name);
            [myMutableDictinary setValue:name forKey:@"subject"];
            return;
        }
        i++;
    }
    
    printf("\nCourse already exists\n ");
}

/* TODO: Delete an subject*/
-(void)delete: (NSMutableArray *) myMutableArray
{
    char codeObject[40];
    printf("Enter code Subject want delete:  ");
    scanf("%39s", codeObject);
    NSString *code = [NSString stringWithCString:codeObject encoding:NSUTF8StringEncoding];
    int i = 0;
    for(NSMutableDictionary *myMutableDictinary in myMutableArray)
    {
        if ([myMutableDictinary[@"code"] isEqualToString: code]) {
            
            [myMutableArray removeObject:myMutableDictinary];
            return;
        }
        i++;
    }
    
    printf("\nCourse already exists\n ");
}

/* TODO: print list subject*/
-(void) printList:(NSMutableArray *)myMutableArray
{
    printf("Print list!\n");
    unsigned long c = [myMutableArray count];
    if(c == 0)
    {
        printf("List is empty\n");
    }
    for(NSMutableDictionary *mDict in myMutableArray)
    {
        NSLog(@"Code: %@ | Name: %@", mDict[@"code"], mDict[@"subject"]);
    }
}

/* TODO: Sort subject for code object*/
-(void) sortSubject:(NSMutableArray *)myMutableArray
{
    NSSortDescriptor *codeDescroptor = [NSSortDescriptor sortDescriptorWithKey:@"code" ascending:YES selector:@selector(caseInsensitiveCompare:)];
    NSArray *descriptors = @[codeDescroptor];
    [myMutableArray sortUsingDescriptors:descriptors] ;
}

@end

int main(int argc, const char * argv[]) {
    char c;
    BOOL a = YES;
    SampleClass *sampleClass = [[SampleClass alloc] init];
    
    /*Deracle NSMutableDictionary*/
 //   NSMutableDictionary *myDict = [[NSMutableDictionary alloc] init];
    
    /*Deracle NSMutableArray*/
    NSMutableArray *myMutableArray = [[NSMutableArray alloc] init];
//    [myArray addObject:myDict];
    
    while (a) {
        
        [sampleClass menu];
        int fun;
        printf("\nEnter function: ");
        scanf("%d", &fun);
        switch (fun) {
        
            case 1:
                [sampleClass insert:myMutableArray];
                break;
            case 2:
                [sampleClass repair:myMutableArray];
                break;
            case 3:
                [sampleClass delete: myMutableArray];
                break;
            case 4:
                [sampleClass printList:myMutableArray];
                break;
            case 5:
                [sampleClass sortSubject:myMutableArray];
                [sampleClass printList:myMutableArray];
            default:
                break;
        }

        
        printf("Do you want continue(Y/N): ");
        scanf("%s",&c);
        fflush(stdin);
        
        if(c == 'N' || c == 'n')  a = NO;
    };
    
//    printf("Count: %lu", myDict.count);
    
    return 0;
}
