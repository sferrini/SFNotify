//
//  SFNotify.m
//  SFNotify
//
//  Created by Simone Ferrini on 22/02/14.
//  Copyright (c) 2014 Simone Ferrini. All rights reserved.
//

#import "SFNotify.h"

float heightNotify;

@implementation UIView (SFNotify)

- (void)notify:(NSString *)message withDirection:(int)direction withBackgroundColor:(UIColor *)color withFont:(UIFont *)font withTextColor:(UIColor *)textColor withDuration:(float)duration
{
    //Create notify
    UIView *notify = [self viewForMessage:message
                      withBackgroundColor:color
                                 withFont:font
                            withTextColor:textColor];
    
    //Slide in
    [self slideInNotify:notify withDirection:direction withDuration:duration];
    
}

#pragma mark - Slide in
- (void)slideInNotify:(UIView*)notify withDirection:(int)direction withDuration:(float)duration
{
    switch (direction)
    {
        case DEFAULT_DIRECTION:
        {
            [self slideInNotify_DIRECTION_TOP_TO_BOTTOM:notify withDuration:duration];
        }break;
        case DIRECTION_TOP_TO_BOTTOM:
        {
            [self slideInNotify_DIRECTION_TOP_TO_BOTTOM:notify withDuration:duration];
        }break;
        case DIRECTION_BOTTOM_TO_TOP:
        {
            [self slideInNotify_DIRECTION_BOTTOM_TO_TOP:notify withDuration:duration];
        }break;
        default:
        {
            [self slideInNotify_DIRECTION_TOP_TO_BOTTOM:notify withDuration:duration];
        }break;
    }
}

- (void)slideInNotify_DIRECTION_TOP_TO_BOTTOM:(UIView*)notify withDuration:(float)duration
{
    heightNotify = - notify.frame.size.height;
    [notify setFrame:CGRectMake(0, 0 + heightNotify , notify.frame.size.width, notify.frame.size.height)];
    [self addSubview:notify];
    
    [UIView animateWithDuration:ANIMATE_DURATION
                     animations:^{
                         [notify setFrame:CGRectMake(0, 0, notify.frame.size.width, notify.frame.size.height)];
                     }
                     completion:^(BOOL finished){
                         [NSTimer scheduledTimerWithTimeInterval:duration
                                                          target:self
                                                        selector:@selector(hideNotify_DIRECTION_TOP_TO_BOTTOM:)
                                                        userInfo:notify
                                                         repeats:NO];
                     }];
}

- (void)slideInNotify_DIRECTION_BOTTOM_TO_TOP:(UIView*)notify withDuration:(float)duration
{
    heightNotify = notify.frame.size.height;
    
    [notify setFrame:CGRectMake(0, self.frame.size.height , notify.frame.size.width, notify.frame.size.height)];
    [self addSubview:notify];
    
    [UIView animateWithDuration:ANIMATE_DURATION
                     animations:^{
                         [notify setFrame:CGRectMake(0, self.frame.size.height - heightNotify, notify.frame.size.width, notify.frame.size.height)];
                     }
                     completion:^(BOOL finished){
                         [NSTimer scheduledTimerWithTimeInterval:duration
                                                          target:self
                                                        selector:@selector(hideNotify_DIRECTION_BOTTOM_TO_TOP:)
                                                        userInfo:notify
                                                         repeats:NO];
                     }];
}

#pragma mark - Slide out
- (void)hideNotify_DIRECTION_TOP_TO_BOTTOM:(NSTimer*)timer
{
	UIView* view = timer.userInfo;
	[UIView animateWithDuration:ANIMATE_DURATION
					 animations:^{
						 [view setFrame:CGRectMake(0, 0 + heightNotify, view.frame.size.width, view.frame.size.height)];
					 }
					 completion:^(BOOL finished){
						 [view removeFromSuperview];
					 }];
}

- (void)hideNotify_DIRECTION_BOTTOM_TO_TOP:(NSTimer*)timer
{
	UIView* view = timer.userInfo;
	[UIView animateWithDuration:ANIMATE_DURATION
					 animations:^{
						 [view setFrame:CGRectMake(0, self.frame.size.height + heightNotify, view.frame.size.width, view.frame.size.height)];
					 }
					 completion:^(BOOL finished){
						 [view removeFromSuperview];
					 }];
}

#pragma mark - Create notify
- (UIView *)viewForMessage:(NSString *)message
       withBackgroundColor:(UIColor*)bgColor
                  withFont:(UIFont*)font
             withTextColor:(UIColor*)textColor
{
    if(message == nil)
		return nil;
	
    UILabel *labelMessage = nil;
    
	// Create the background view
    UIView *wrapperView = [[UIView alloc] init];
    [wrapperView setBackgroundColor:bgColor];
	
	// Create the message label
	labelMessage = [[UILabel alloc] init];
	[labelMessage setNumberOfLines:MAX_MESSAGE_LINES];
    [labelMessage setLineBreakMode:NSLineBreakByWordWrapping];
	[labelMessage setFont:font];
    [labelMessage setTextColor:textColor];
	[labelMessage setBackgroundColor:[UIColor clearColor]];
	[labelMessage setText:message];
    
    //Drawing
    NSDictionary *attributes = @{NSFontAttributeName: font};
    CGRect rect = [message boundingRectWithSize:CGSizeMake(self.frame.size.width, MAXFLOAT)
                                        options:NSStringDrawingUsesLineFragmentOrigin
                                     attributes:attributes
                                        context:nil];
    
	[labelMessage setFrame:CGRectMake(0.0, self.frame.size.height, self.frame.size.width, rect.size.height)];
    
    CGFloat wrapperHeight = labelMessage.bounds.size.height + PADDING_Y * 2;
	
    [wrapperView setFrame:CGRectMake(0.0, 0.0, self.frame.size.width, wrapperHeight)];
	
	[labelMessage setFrame:CGRectMake(PADDING_X, PADDING_Y, labelMessage.bounds.size.width, labelMessage.bounds.size.height)];
	[wrapperView addSubview:labelMessage];
	
    return wrapperView;
}

@end
