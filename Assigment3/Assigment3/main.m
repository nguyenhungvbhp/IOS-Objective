//
//  main.m
//  Assigment3
//
//  Created by manhhung on 4/12/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct Books
{
    __unsafe_unretained NSString *title;
    __unsafe_unretained NSString *author;
    __unsafe_unretained NSString *subject;
    int id_book;
} Book;

@interface SampleClass : NSObject
-(void) input: (NSMutableArray *) myMutableArray;

-(void) sortByTitleAndPrint;

-(void) sortByIDBookAndPrint;

-(void) viewAllBooks: (NSMutableArray *) myMutableArray;

-(void) exit;

-(void) menu;

@end

@implementation SampleClass

/* TODO: enter book to list*/
-(void) input: (NSMutableArray *) myMutableArray
{
    int numberBook;
    printf("\nDo you want insert number book: ");
    scanf("%d", &numberBook);
    for (int i = 1; i <= numberBook; i++) {
        
    printf("Enter title of no %d: ", i);
    char cTitle[50];
    scanf("%s", cTitle);
    /*Convert char to String*/
    NSString *title = [NSString stringWithCString:cTitle encoding:NSUTF8StringEncoding];
//    NSLog(@"Title: %@", title);
    
    printf("Enter author of no %d: ", i);
    char cAuthor[50];
    scanf("%s", cAuthor);
    /*Convert char to NSString*/
    NSString *author = [NSString stringWithCString: cAuthor encoding:NSUTF8StringEncoding];
//    NSLog(@"Author: %@", author);
    
    printf("Enter subject of no %d: ", i);
    char cSubject[50];
    scanf("%s", cSubject);
    /*Convert char to NSString*/
    NSString *subject = [NSString stringWithCString:cSubject encoding:NSUTF8StringEncoding];
//    NSLog(@"Subject: %@", subject);
    
    printf("Enter id book of no %d: ", i);
    int idBook;
    scanf("%d", &idBook);
    
    Book book;
    book.title = title;
    book.subject = subject;
    book.author = author;
    book.id_book = idBook;
    
    /*Add book to list*/
    NSValue *value = [NSValue valueWithBytes:&book objCType:@encode(Book)];
    [myMutableArray addObject:value];
//    NSLog(@"Count: %lu", myMutableArray.count);
    

    
    // To retrieve the stored value
    Book structValue;
    NSValue *valsue = [myMutableArray objectAtIndex:0];
    [valsue getValue:&structValue];
    }
//    NSLog(@"Author: %@", structValue.author);
}


/* Sort List book for title and print list*/
-(void) sortByTitleAndPrint
{
    printf("Sort By Title Print\n");
}

/* TODO: Sort List book for id and print list*/
-(void) sortByIDBookAndPrint
{
    printf("Sort by id book\n");
}

/*TODO: exit*/
-(void) exit
{
    printf("Exit\n");
}

/* TODO: print menu*/
-(void) menu
{
    printf("\n==================MENU===================\n");
    printf("1. Input book to List");
    printf("2. Sort by title and print list book\n");
    printf("3. Sort by id book and print list book\n");
    printf("4. Print list book\n");
    printf("5. Exit\n");
}

-(void) viewAllBooks:(NSMutableArray *)myMutableArray
{
    for (int i = 0; i < myMutableArray.count; i++) {
        Book structValue;
        NSValue *valsue = [myMutableArray objectAtIndex:i];
        [valsue getValue:&structValue];
        printf("\nBook %d\n", i);
        NSLog(@"Title: %@", structValue.title);
        NSLog(@"Subject: %@", structValue.subject);
        NSLog(@"Author: %@", structValue.author);
        NSLog(@"Id book: %d", structValue.id_book);
    }
}

@end


int main(int argc, const char * argv[]) {
    SampleClass *sampleClass = [[SampleClass alloc] init];
    NSMutableArray *myMutableArray = [[NSMutableArray alloc] init];
    
    BOOL perform = YES;
    while (perform) {
        int fun;
        char c;
        [sampleClass menu];
        printf("Choose function: ");
        scanf("%d", &fun);
        switch (fun) {
            case 1:
                [sampleClass input:myMutableArray];
                break;
        
            case 2:
                [sampleClass sortByTitleAndPrint];
                break;
            
            case 3:
                [sampleClass sortByTitleAndPrint];
                break;
            case 4:
                [sampleClass viewAllBooks:myMutableArray];
                break;
        
            case 5:
                [sampleClass exit];
                break;
            default:
                printf("There is no function you choose!");
                break;
       }
        printf("Do you want continue (Y|N):");
        scanf("%s", &c);
        if(c == 'n' || c == 'N') perform = NO;
    };
    return 0;
}
