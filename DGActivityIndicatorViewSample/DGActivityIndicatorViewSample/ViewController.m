//
//  ViewController.m
//  DGActivityIndicatorViewSample
//
//  Created by jz on 1/24/17.
//  Copyright © 2017 jzeferino. All rights reserved.
//

#import "ViewController.h"
#import <DGActivityIndicatorView/DGActivityIndicatorView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
    self.view.backgroundColor = [UIColor colorWithRed:237/255.0f green:85/255.0f blue:101/255.0f alpha:1.0f];
    
    NSArray *activityTypes = @[@(DGActivityIndicatorAnimationTypeNineDots),
                               @(DGActivityIndicatorAnimationTypeTriplePulse),
                               @(DGActivityIndicatorAnimationTypeFiveDots),
                               @(DGActivityIndicatorAnimationTypeRotatingSquares),
                               @(DGActivityIndicatorAnimationTypeDoubleBounce),
                               @(DGActivityIndicatorAnimationTypeTwoDots),
                               @(DGActivityIndicatorAnimationTypeThreeDots),
                               @(DGActivityIndicatorAnimationTypeBallPulse),
                               @(DGActivityIndicatorAnimationTypeBallClipRotate),
                               @(DGActivityIndicatorAnimationTypeBallClipRotatePulse),
                               @(DGActivityIndicatorAnimationTypeBallClipRotateMultiple),
                               @(DGActivityIndicatorAnimationTypeBallRotate),
                               @(DGActivityIndicatorAnimationTypeBallZigZag),
                               @(DGActivityIndicatorAnimationTypeBallZigZagDeflect),
                               @(DGActivityIndicatorAnimationTypeBallTrianglePath),
                               @(DGActivityIndicatorAnimationTypeBallScale),
                               @(DGActivityIndicatorAnimationTypeLineScale),
                               @(DGActivityIndicatorAnimationTypeLineScaleParty),
                               @(DGActivityIndicatorAnimationTypeBallScaleMultiple),
                               @(DGActivityIndicatorAnimationTypeBallPulseSync),
                               @(DGActivityIndicatorAnimationTypeBallBeat),
                               @(DGActivityIndicatorAnimationTypeLineScalePulseOut),
                               @(DGActivityIndicatorAnimationTypeLineScalePulseOutRapid),
                               @(DGActivityIndicatorAnimationTypeBallScaleRipple),
                               @(DGActivityIndicatorAnimationTypeBallScaleRippleMultiple),
                               @(DGActivityIndicatorAnimationTypeTriangleSkewSpin),
                               @(DGActivityIndicatorAnimationTypeBallGridBeat),
                               @(DGActivityIndicatorAnimationTypeBallGridPulse),
                               @(DGActivityIndicatorAnimationTypeRotatingSandglass),
                               @(DGActivityIndicatorAnimationTypeRotatingTrigons),
                               @(DGActivityIndicatorAnimationTypeTripleRings),
                               @(DGActivityIndicatorAnimationTypeCookieTerminator),
                               @(DGActivityIndicatorAnimationTypeBallSpinFadeLoader)];
    int cols = 4;
    int rows = 8;
    int cellWidth = (int)(self.view.bounds.size.width / cols);
    int cellHeight = (int)(self.view.bounds.size.height / rows);

    for (int i = 0; i < activityTypes.count; i++) {
        
        int x = i % cols * cellWidth;
        int y = i / cols * cellHeight;
        
        DGActivityIndicatorView *activityIndicatorView = [[DGActivityIndicatorView alloc] initWithType:(DGActivityIndicatorAnimationType)[activityTypes[i] integerValue] tintColor:[UIColor whiteColor]];
        
        activityIndicatorView.frame = CGRectMake(x, y, cellWidth, cellHeight);
        activityIndicatorView.bounds = CGRectInset(activityIndicatorView.frame, 10.0f, 10.0f);
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(x, y + (cellHeight - activityIndicatorView.frame.size.height), cellWidth, cellHeight)];
        label.text = [NSString stringWithFormat: @"%d", i];
        label.textColor = [UIColor whiteColor];
        [label setFont:[UIFont systemFontOfSize:12]];

        [self.view addSubview:activityIndicatorView];
        [self.view addSubview:label];

        [activityIndicatorView startAnimating];
    }

}

@end
