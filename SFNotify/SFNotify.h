//
//  SFNotify.h
//  SFNotify
//
//  Created by Simone Ferrini on 22/02/14.
//  Copyright (c) 2014 Simone Ferrini. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SFNotifySettings"

@interface UIView (SFNotify)

- (void)notify:(NSString *)message withDirection:(int)direction withBackgroundColor:(UIColor*)color withFont:(UIFont*)font withTextColor:(UIColor*)textColor withDuration:(float)duration;

@end
