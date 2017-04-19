//
//  Rectangle.h
//  Bai 5
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

/*declare attribute*/
{
    int width;
    int height;
}

/*get and set method*/
-(void) setWidth: (int) newWidth;
-(void) setHeigh: (int) newHeight;
-(void) setWidthAndHeight: (int) newWidth andSetHeight: (int) newHeight;

-(int) getWidht;
-(int) getHeight;

-(void) draw;



@end
