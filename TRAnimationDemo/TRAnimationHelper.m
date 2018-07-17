//
//  TRAnimationHelper.m
//  TRAnimationDemo
//
//  Created by book on 2017/7/17.
//  Copyright © 2017年 Tracky. All rights reserved.
//

#import "TRAnimationHelper.h"

@implementation TRAnimationHelper


+ (void)showPraiseAnimationWithTouch:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSSet * allTouches = [event allTouches];
    UITouch * touch = [allTouches anyObject];
    
    CGPoint point = [touch locationInView:[touch view]];
    UIImage * image = [UIImage imageNamed:@"shortVideo_praise_redPraise"];
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    imageView.image = image;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.center = point;
    
    int angle = arc4random() % 2;
    angle = angle ? angle : -1;
    imageView.transform = CGAffineTransformRotate(imageView.transform,M_PI / 9 * angle);
    [[touch view] addSubview:imageView];
    
    __block UIImageView * backgroundImageView = imageView;
    [UIView animateWithDuration:0.1 animations:^{
        backgroundImageView.transform = CGAffineTransformScale(backgroundImageView.transform, 1.4, 1.4);
    } completion:^(BOOL finished) {
        backgroundImageView.transform = CGAffineTransformScale(backgroundImageView.transform, 0.8, 0.8);
        [self performSelector:@selector(praiseFly:) withObject:backgroundImageView afterDelay:0.3];
    }];
}

+ (void)praiseFly:(UIImageView *)backgroundImageView {
    [UIView animateWithDuration:1.0 animations:^{
        backgroundImageView.frame = CGRectMake(backgroundImageView.frame.origin.x, backgroundImageView.frame.origin.y - 100, backgroundImageView.frame.size.width, backgroundImageView.frame.size.height);
        backgroundImageView.transform = CGAffineTransformScale(backgroundImageView.transform, 1.8, 1.8);
        backgroundImageView.alpha = 0.0;
    } completion:^(BOOL finished) {
        [backgroundImageView removeFromSuperview];
    }];
}
@end
