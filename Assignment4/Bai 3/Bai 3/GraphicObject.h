//
//  GraphicObject.h
//  Bai 3
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject

{
    /*declare attribute*/
    int fillColor;
    BOOL filled;
    int lineColor;
}

- (id) initWithName: (int) newFillColor andFilled: (BOOL) newFilled andLineColor: (int) newLineColor;

-(void) print;

/*delcare get method*/
-(int) getFillColor;
-(BOOL) isFilled;
-(int) getLineColor;

/* declare set method*/
-(void) setFillColor: (int) newFillColor;
-(void) setFilled: (BOOL) newFilled;
-(void) setLineColor: (int) newLineColor;

@end
