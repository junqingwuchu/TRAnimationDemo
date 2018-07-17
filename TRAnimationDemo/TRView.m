//
//  TRView.m
//  TRAnimationDemo
//
//  Created by book on 2017/7/17.
//  Copyright © 2017年 Tracky. All rights reserved.
//

#import "TRView.h"
#import "TRAnimationHelper.h"

@implementation TRView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [TRAnimationHelper showPraiseAnimationWithTouch:touches withEvent:event];
}
@end
