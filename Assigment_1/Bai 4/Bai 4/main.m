//
//  main.m
//  Bai 4
//
//  Created by manhhung on 4/7/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject
/*Khai bao function in tam giac passcal*/
-(void) printTrianglePasscal: (int )n;

/*Khai bao function tinh giai thua n*/
-(int) fact: (int)n;

/*Khai bao function tinh to hop*/
-(int) combination: (int) k andNumberTow: (int)n;

/*Khai bao finction nhap gia tri*/
-(int) input;
@end

/* */
@implementation SampleClass

/*Thuc hien tinh giai thua cua n*/
-(int) fact:(int)n
{

    int f = 1;
    for(int i = n; i >= 1; i--)
    {
        f *= i;
    }
    return f;
}

/*Thuc hien ham tinh to hop*/
-(int)combination:(int)k andNumberTow:(int)n
{
    if(k == 0)
    {
        return 1;
    }
    int result = [self fact:n] / ([self fact:(n - k)] * [self fact:k]);
    return result;
}


/*Thuc hien function function in tam giac passcal*/
- (void) printTrianglePasscal:(int)n
{
    for(int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++) {
            if(j >= n - i - 1){
                printf("%d ",[self combination: (i + j - n + 1) andNumberTow:i]);
            }else
            printf(" ");
        }
        printf("\n");
    }
}

/*Thực hiện hàm nhập giá trị*/
-(int) input
{
    int n;
    do
    {
        printf("Enter n: ");
        scanf("%d", &n);
        if(n < 1){
            printf("Please n > 0 !");
        }
        
    }while (n < 1);
    return n;
}

@end

int main(int argc, const char * argv[]) {
    SampleClass *sampleClass = [[SampleClass alloc]init];
    int n = [sampleClass input];
    [sampleClass printTrianglePasscal:n];
    return 0;
}
