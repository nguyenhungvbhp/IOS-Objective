//
//  Rectangle.m
//  Bai 5
//
//  Created by manhhung on 4/18/17.
//  Copyright © 2017 manhhung. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
-(id) init
{
    self = [super init];
    if (self) {
        width = 0;
        height = 0;
    }
    
    return self;
}

-(int) getWidht
{
    return width;
}

-(int) getHeight
{
    return height;
}

-(void) setWidth:(int)newWidth
{
    width = newWidth;
}

-(void) setHeigh:(int)newHeight
{
    height = newHeight;
}

-(void) setWidthAndHeight:(int)newWidth andSetHeight:(int)newHeight
{
    width = newWidth;
    height = newHeight;
}

-(void) draw
{
    for (int i = 0; i < height + 2; i++) {
        for (int j = 0; j < width; j++) {
            if((i == 0)|| (i == height + 1))
            {
                printf("-");
            }
           if(i != 0  && i != height + 1)
           {
               if(j > 0 && j < width - 1)
               {
                   printf(" ");
               }else
               {
                   printf("|");
               }
           }
        }
        printf("\n");
    }
}
@end
