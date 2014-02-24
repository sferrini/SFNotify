SFNotify
=============

Simple custom user notifications

Based off [andreamazz / UIView-Notify](https://github.com/andreamazz/UIView-Notify)

Install
--------------------
* Copy the folder ```SFNotify``` to your project.

Usage
--------------------
Import ```SFNotify.h```

* Default notification:

```		objc
	    [self.view notify:@"This is the:\nSFNotify" //Change the text
        withDirection:DEFAULT_DIRECTION
  withBackgroundColor:DEFAULT_COLOR_BACKGROUND
             withFont:DEFAULT_FONT
        withTextColor:DEFAULT_TEXT_COLOR
         withDuration:DEFAULT_TIME_DURATION];
```

* Custom notification:

```		objc
        [self.view notify:@"This is the custom:\nSFNotify\n\nFeel free to modify whatever you want"
        withDirection:DIRECTION_BOTTOM_TO_TOP  //Custom direction
  withBackgroundColor:[UIColor blackColor] //Custom notify background color
             withFont:[UIFont systemFontOfSize:18] //Custom font
        withTextColor:[UIColor colorWithRed:1 green:.98 blue:0.09 alpha:1] //Custom font color
         withDuration:4.0]; //Custom duration
```

Screen
--------------------

https://github.com/sferrini/SFNotify/tree/master/Demo/Demo/Screen

DEFAULT:
![Demo DEFAULT](https://github.com/sferrini/SFNotify/tree/master/Demo/Demo/Screen/DEFAULT.gif)

CUSTOM:
![Demo DIRECTION_BOTTOM_TO_TOP](https://github.com/sferrini/SFNotify/tree/master/Demo/Demo/Screen/DIRECTION_BOTTOM_TO_TOP.gif)

![Demo DIRECTION_LEFT_TO_RIGHT](https://github.com/sferrini/SFNotify/tree/master/Demo/Demo/Screen/DIRECTION_LEFT_TO_RIGHT.gif)