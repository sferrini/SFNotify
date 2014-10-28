SFNotify
=============

[![Build Status](https://travis-ci.org/sferrini/SFNotify.png?branch=master)](https://travis-ci.org/sferrini/SFNotify)

Simple custom user notifications

Based off [andreamazz / UIView-Notify](https://github.com/andreamazz/UIView-Notify)

Install
--------------------

* Manually:
Copy the folder ```SFNotify``` to your project.


* CocoaPods: Add the following line to your Podfile:

```
pod 'SFNotify'
```

Usage
--------------------
Import ```SFNotify.h```

* Default notification:

```		objc
    NSString *yourMessage = [NSString stringWithFormat:@"This is the:\nSFNotify"];  //Change the text
    
    [self.view notify:yourMessage
        withDirection:DEFAULT_DIRECTION
  withBackgroundColor:DEFAULT_COLOR_BACKGROUND
             withFont:DEFAULT_FONT
        withTextColor:DEFAULT_TEXT_COLOR
         withDuration:DEFAULT_TIME_DURATION];
```

* Custom notification:

```		objc
    NSString *yourCustomMessage = [NSString stringWithFormat:@"This is the custom:\nSFNotify\n\nFeel free to modify whatever you want"];  //Change the text
    
    [self.view notify:yourCustomMessage
        withDirection:DIRECTION_LEFT_TO_RIGHT  //Custom direction
  withBackgroundColor:[UIColor blackColor] //Custom notify background color
             withFont:[UIFont fontWithName:@"menlo" size:12] //Custom font
        withTextColor:[UIColor whiteColor] //Custom font color
         withDuration:4.0]; //Custom duration

```

* Notification with specified event on touch

```		objc
NSString *yourMessage = [NSString stringWithFormat:@"This is the:\nSFNotify"];  //Change the text
    
    [self.view notify:yourMessage
        withDirection:DEFAULT_DIRECTION
        withBackgroundColor:DEFAULT_COLOR_BACKGROUND
        withFont:DEFAULT_FONT
        withTextColor:DEFAULT_TEXT_COLOR
        withDuration:DEFAULT_TIME_DURATION
        andOnTouch:^{
             UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"SFNotify"
                                                        message:@"Notification view was touched!"
                                                        delegate:nil
                                                        cancelButtonTitle:@"OK"
                                                        otherButtonTitles:nil, nil];
               [alert show];
           }];

```

Screen
--------------------

![Demo DEFAULT](https://raw.github.com/sferrini/SFNotify/master/Demo/Demo/Screen/DEFAULT.gif)

![Demo DIRECTION_BOTTOM_TO_TOP](https://raw.github.com/sferrini/SFNotify/master/Demo/Demo/Screen/DIRECTION_BOTTOM_TO_TOP.gif)

![Demo DIRECTION_LEFT_TO_RIGHT](https://raw.github.com/sferrini/SFNotify/master/Demo/Demo/Screen/DIRECTION_LEFT_TO_RIGHT.gif)

![Demo TOUCH_CALLBACK](https://raw.github.com/oduwa/SFNotify/master/Demo/Demo/Screen/notificationObjC.gif)
