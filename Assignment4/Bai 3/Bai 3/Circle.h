//
//  Circle.h
//  Bai 3
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import "GraphicObject.h"

@interface Circle : GraphicObject
{
    int r;
}
-(id) initWithName:(int)newFillColor andFilled:(BOOL)newFilled andLineColor:(int)newLineColor andR: (int) newR;
-(int) getFillColor;
-(int) getLineColor;
-(BOOL) isFilled;
-(int) getR;

-(void) setFillColor:(int)newFillColor;
-(void)setFilled:(BOOL)newFilled;
-(void) setLineColor:(int)newLineColor;
-(void)setR:(int) newR;

/*circuit and area*/
-(float) getCircuit;
-(float) getArea;
@end
