//
//  Person.m
//  Bai 1
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import "Person.h"

@implementation Person
/*constrcutor*/

-(NSString *) getName
{
    return name;
}

-(NSString *) getAddress
{
    return email;
}

-(NSString *) getEmail
{
    return email;
}

-(NSNumber *)getAge
{
    return age;
}

-(void)getInfo
{
    NSLog(@"Name: %@ - Address: %@ - Email: %@ - Age: %@", name, address, email, age);
}

-(void) setName:(NSString *)newName
{
//    [name release];
    name = [[NSString alloc]initWithString:newName];
    
}

-(void) setAddress:(NSString *)newAdsress
{
//    [address release];
    address = [[NSString alloc] initWithString:newAdsress];
}

-(void) setEmail:(NSString *)newEmail
{
//    [email release];
    email = [[NSString alloc]initWithString:newEmail];
}

-(void) setAge:(NSNumber *)newAge
{
//    [age release];
    age = [[NSNumber alloc]init];
    age = newAge;
}

-(void) setInfo:(NSString *)newName andAdress:(NSString *)newAddress andEmail:(NSString *)newEmail andAge:(NSNumber *)newAge
{
//    [name release];
    name = [[NSString alloc] initWithString:newName];
    
//    [address release];
    address = [[NSString alloc] initWithString:newAddress];
    
//    [email release];
    email = [[NSString alloc] initWithString:newEmail];
    
//    [age release];
    age = [[NSNumber alloc]init];
    age = newAge;
}

-(id)init
{
    self = [super init];
    if (self) {
        name = @"Person";
        address = @"Address";
        email = @"Email";
        age = 0;
    }
    
    return self;
}

@end
