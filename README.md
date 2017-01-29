# DGActivityIndicatorView

This project is a fork from the original [DGActivityIndicatorView](https://github.com/gontovnik/DGActivityIndicatorView).
The main purpose of it was to separate the library from the sample to allow compilating only the library.
I've added a Makefile to compile the library into a fat .a file.

DGActivityIndicatorView is a great way to make loading spinners in your application look nicer. 
It contains 32 different indicator view styles. Inspired by: http://connoratherton.com/loaders

![alt tag](https://raw.githubusercontent.com/gontovnik/DGActivityIndicatorView/master/DGActivityIndicatorView.gif)

## Requirements
* Xcode 6 or higher
* Apple LLVM compiler
* iOS 8.0 or higher (May work on previous versions, just did not testit. Feel free to edit it).
* ARC

## Demo

Open and run the DGActivityIndicatorViewSample project in Xcode to see DGActivityIndicatorView in action.

## Example usage

``` objective-c
DGActivityIndicatorView *activityIndicatorView = [[DGActivityIndicatorView alloc] initWithType:DGActivityIndicatorAnimationTypeDoubleBounce tintColor:[UIColor whiteColor] size:20.0f];
activityIndicatorView.frame = CGRectMake(0.0f, 0.0f, 50.0f, 50.0f);
[self.view addSubview:activityIndicatorView];
[activityIndicatorView startAnimating];
```

## Thanks to

[Danil Gontovnik] (https://github.com/gontovnik)
