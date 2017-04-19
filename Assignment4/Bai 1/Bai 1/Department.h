//
//  Department.h
//  Bai 1
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Department : NSObject
{
    /*deracle attribute*/
    NSMutableArray *arrayPerson;
    
}

/*get and set method*/
-(void) getArrayPerson;

/*dercle method*/
-(void) createPerson: (Person *)newPerson;

@end
