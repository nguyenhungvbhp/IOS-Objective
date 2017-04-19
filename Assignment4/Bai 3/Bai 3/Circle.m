//
//  Circle.m
//  Bai 3
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import "Circle.h"
#define PI 3.14
@implementation Circle
-(id)initWithName:(int)newFillColor andFilled:(BOOL)newFilled andLineColor:(int)newLineColor andR:(int)newR
{
    fillColor = newFillColor;
    lineColor = newLineColor;
    filled = newFilled;
    r = newR;
    return self;
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
    return  filled;
}

-(void) setLineColor:(int)newLineColor
{
    lineColor = newLineColor;
}

-(void) setFilled:(BOOL)newFilled
{
    filled = newFilled;
}

-(void) setFillColor:(int)newFillColor
{
    fillColor = newFillColor;
}

-(void) setR:(int)newR
{
    r = newR;
}

-(int) getR
{
    return r;
}

-(float) getCircuit
{
    return 2 * PI * r;
}

-(float) getArea{
    return PI * r * r;
}
@end
