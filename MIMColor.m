/*
 Copyright (C) 2011  Reetu Raj (reetu.raj@gmail.com)
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *///
//  MIMColor.m
//  MIMChartLib
//
//  Created by Reetu Raj on 11/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MIMColor.h"

/*
 
 Note: we will be writing all static methods here. (with + in the beginnning)
 And don't  forget to declare them in .h after writing them here.
 
 For plain color, you can simply make dictionary first and
 then keep adding them in array called colorValues.
 You can refer to +(void)nonAdjacentPlainColors
 if you have any confusion.
 
 
 For Gradient Colors, Right now we only support 2 gradients only.
 You will make dictionary of dark component of Gradient first
 and add it to array called colorValues.
 Then you will dictionary of light component of Gradient
 and add it to the same array
 You can refer to +(void)InitFragmentedBarColors
 if you have any confusion.
 
 */

static NSMutableArray *colorValues;

@implementation MIMColor


+(NSDictionary *)GetColorAtIndex:(int)index
{
    return [colorValues objectAtIndex:index];
}

+(void)InitColors
{
    colorValues=[[NSMutableArray alloc]init];
    
    NSDictionary *color;
    //---red*************
    color=[[NSDictionary alloc]initWithObjects:[NSArray arrayWithObjects:@"0.541",@"0.062",@"0.0", nil] forKeys:[NSArray arrayWithObjects:@"red",@"green",@"blue", nil]];
    [colorValues addObject:color];
    
    //---green**************
    color=[[NSDictionary alloc]initWithObjects:[NSArray arrayWithObjects:@"0.298",@"0.556",@"0.141", nil] forKeys:[NSArray arrayWithObjects:@"red",@"green",@"blue", nil]];
    [colorValues addObject:color];
}

+(NSInteger)sizeOfColorArray
{
    return [colorValues count];
}

@end
