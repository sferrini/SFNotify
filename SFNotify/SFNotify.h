//
//  SFNotify.h
//  SFNotify
//
//  Created by Simone Ferrini on 22/02/14.
//  Copyright (c) 2014 Simone Ferrini. All rights reserved.
//


//You can choose the direction:
//------------------------------------
//-----
#define DIRECTION_TOP_TO_BOTTOM     1
#define DIRECTION_BOTTOM_TO_TOP     2
#define DIRECTION_LEFT_TO_RIGHT     3
#define DIRECTION_RIGHT_TO_LEFT     4
//-----
//------------------------------------


//Default settings:
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
#define DEFAULT_COLOR_BACKGROUND    [UIColor colorWithRed:.93f green:.78f blue:.29f alpha:.9]

#define MAX_MESSAGE_LINES           999

#define PADDING_X                   10.0
#define PADDING_Y                   10.0

#define DEFAULT_TEXT_COLOR          [UIColor whiteColor]
#define DEFAULT_FONT                [UIFont systemFontOfSize:16.0]

#define DEFAULT_TIME_DURATION       2.0
#define ANIMATE_DURATION            .3

#define DEFAULT_DIRECTION           0
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////


#import <Foundation/Foundation.h>

@interface UIView (SFNotify)

- (void)notify:(NSString *)message withDirection:(int)direction withBackgroundColor:(UIColor*)color withFont:(UIFont*)font withTextColor:(UIColor*)textColor withDuration:(float)duration;

@end
