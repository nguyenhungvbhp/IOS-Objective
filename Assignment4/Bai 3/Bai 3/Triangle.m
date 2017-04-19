//
//  Triangle.m
//  Bai 3
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import "Triangle.h"
#import "math.h"

@implementation Triangle
-(id)initWithName:(int)newFillColor andFilled:(BOOL)newFilled andLineColor:(int)newLineColor andA:(int)newA andB:(int)newB andC:(int)newC{

    fillColor = newFillColor;
    lineColor = newLineColor;
    filled = newFilled;
    a = newA;
    b = newB;
    c = newC;
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

-(float)getCircuit{
    return (a + b + c);
}

-(double)getArea{
    float p = (a + b + c);
    return sqrtf(p*(p - a)*(p - b)*(p - c));
}
@end
