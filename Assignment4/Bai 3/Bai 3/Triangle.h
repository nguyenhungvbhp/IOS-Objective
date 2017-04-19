//
//  Triangle.h
//  Bai 3
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import "GraphicObject.h"

@interface Triangle : GraphicObject
{
    int a;
    int b;
    int c;
}
-(id) initWithName:(int)newFillColor andFilled:(BOOL)newFilled andLineColor:(int)newLineColor andA: (int)newA andB: (int)newB andC: (int)newC;
-(int) getFillColor;
-(int) getLineColor;
-(BOOL) isFilled;

-(void) setFillColor:(int)newFillColor;
-(void)setFilled:(BOOL)newFilled;
-(void) setLineColor:(int)newLineColor;

/*area method */
-(double) getArea;
-(float) getCircuit;
@end
