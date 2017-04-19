//
//  main.m
//  Bai 2
//
//  Created by manhhung on 4/8/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSDictionary *student1 = @{
                               @"name": @"Nguyen Manh Hung",
                               @"sex": @"male",
                               @"score": [NSDecimalNumber decimalNumberWithString:@"9.5"]
                               };
    
    NSDictionary *student2 = @{
                               @"name": @"Hoang Nhat Tuan",
                               @"sex": @"male",
                               @"score": [NSDecimalNumber decimalNumberWithString:@"10"]
                               };
    
    NSDictionary *student3 = @{
                               @"name": @"Dang Thi Trang",
                               @"sex": @"female",
                               @"score": [NSDecimalNumber decimalNumberWithString:@"10"]
                               };
    
    NSDictionary *student4 = @{
                               @"name": @"Tran Anh Ly",
                               @"sex": @"female",
                               @"score": [NSDecimalNumber decimalNumberWithString:@"7.5"]
                               };
    NSDictionary *student5 = @{
                               @"name": @"Nguyen Minh Nhat",
                               @"sex": @"male",
                               @"score": [NSDecimalNumber decimalNumberWithString:@"6.5"]
                               };
    
    NSDictionary *student6 = @{
                               @"name": @"Hoang Anh Tuan",
                               @"sex": @"male",
                               @"score": [NSDecimalNumber decimalNumberWithString:@"10"]
                               };
    
    NSDictionary *student7 = @{
                               @"name": @"Le Hoang Anh",
                               @"sex": @"female",
                               @"score": [NSDecimalNumber decimalNumberWithString:@"5"]
                               };
    
    NSDictionary *student8 = @{
                               @"name": @"Trinh Anh Thuy",
                               @"sex": @"female",
                               @"score": [NSDecimalNumber decimalNumberWithString:@"7.5"]
                               };
    
    NSDictionary *student9 = @{
                               @"name": @"Hoang Thi Trang",
                               @"sex": @"female",
                               @"score": [NSDecimalNumber decimalNumberWithString:@"8.4"]
                               };
    
    NSDictionary *student10 = @{
                               @"name": @"Dang thi Anh",
                               @"sex": @"female",
                               @"score": [NSDecimalNumber decimalNumberWithString:@"6.5"]
                               };


    
    NSMutableArray *students = [NSMutableArray arrayWithObjects:student1, student2, student3, student4,student5, student6, student7, student8, student9, student10, nil];
    
    NSUInteger c = students.count;
    float avg = 0;
    float max = -1;
    int index = 0;
    for(int i = 0; i < c; i++){
        NSString *scoreString = [students[i] valueForKey:@"score"];
        float sco = [scoreString floatValue];
        
        NSLog(@"Name: %@ - Sex: %@ - score: %0.1f", [students[i] valueForKey:@"name"], [students[i] valueForKey:@"sex"], sco);
       
        if (sco > max) {
            max = sco;
            index = i;
        }
        avg += sco;
    }
    
    avg /= c;
    
    printf("\n\n");
    NSLog(@"Avg of score: %.1f", avg);
   
    printf("\n\n");
    NSLog(@"List student have max socre");
    for(int i = 0; i < c; i++){
        NSString *scoreString = [students[i] valueForKey:@"score"];
        float sco = [scoreString floatValue];
        if(sco == max){
             NSLog(@"Name: %@ - Sex: %@ - score: %0.1f", [students[i] valueForKey:@"name"], [students[i] valueForKey:@"sex"], sco);
        }
    }
    
    return 0;
}
