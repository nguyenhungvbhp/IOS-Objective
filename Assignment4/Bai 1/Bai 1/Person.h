//
//  Person.h
//  Bai 1
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    /* declare aitributes*/
    NSString *name;
    NSString *address;
    NSString *email;
    NSNumber *age;
}


/* declare get method*/
-(NSString *) getName;
-(NSString *) getAddress;
-(NSString *) getEmail;
-(NSNumber *) getAge;
-(void) getInfo;

/* declare set method*/
-(void) setName: (NSString *)newName;
-(void) setAddress: (NSString *) newAdsress;
-(void) setEmail: (NSString *) newEmail;
-(void) setAge: (NSNumber *) newAge;
-(void) setInfo:(NSString *) newName andAdress: (NSString *) newAddress andEmail: (NSString *) newEmail andAge:(NSNumber *) newAge;


@end
