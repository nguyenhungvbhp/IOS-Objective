//
//  main.m
//  Bai 1
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Department.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *person = [[Person alloc]init];
        [person setInfo:@"Nguyen Hung" andAdress:@"Minh Khai" andEmail:@"hungmanh.hust@gmail.com" andAge:@22];
        
        [person getInfo];
        
        NSLog(@"Bai 2");
        /*init Department*/
        Department *department = [[Department alloc]init];
        Person *person1 = [[Person alloc]init];
        [person1 setInfo:@"Nguyen Ha" andAdress:@"Truong Dinh" andEmail:@"hanguyen@gmail.com" andAge:@22];
        [department createPerson:person];
        [department createPerson:person1];
        [department getArrayPerson];
    }
    return 0;
}
