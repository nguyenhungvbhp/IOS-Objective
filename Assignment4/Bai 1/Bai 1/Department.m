//
//  Department.m
//  Bai 1
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import "Department.h"
#import "Department.h"

@implementation Department
-(id) init
{
    self = [super init];
    if(self)
    {
        arrayPerson = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void) getArrayPerson;
{
    for (Person *item in arrayPerson) {
        item.getInfo;
    }
}

-(void) createPerson:(Person *)newPerson
{
    [arrayPerson addObject:newPerson];
}

@end

