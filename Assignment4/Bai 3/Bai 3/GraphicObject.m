//
//  GraphicObject.m
//  Bai 3
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject

/*Contrcutor*/
-(id) init
{
    self = [super init];
    if (self) {
        fillColor = 0;
        lineColor = 0;
        filled = YES;
    }
    
    return self;
}

-(id) initWithName:(int)newFillColor andFilled:(BOOL)newFilled andLineColor:(int)newLineColor
{
    fillColor = newFillColor;
    filled = newFilled;
    lineColor = newLineColor;
    return self;
}

-(void) print
{
    NSLog(@"Fill color: %d", fillColor);
    NSLog(@"Filled: %hhd", filled);
    NSLog(@"Line color: %d", lineColor);
}
-(int) getFillColor
{
    return fillColor;
}
-(int) getLineColor
{
    return lineColor;
}

-(BOOL) isFilled
{
    return filled;
}

-(void) setFillColor:(int)newFillColor
{
    fillColor = newFillColor;
}
-(void) setLineColor:(int)newLineColor
{
    lineColor = newLineColor;
}
-(void) setFilled:(BOOL)newFilled
{
    filled = newFilled;
}
@end
