//
//  TRAnimationHelper.h
//  TRAnimationDemo
//
//  Created by book on 2017/7/17.
//  Copyright © 2017年 Tracky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TRAnimationHelper : NSObject

/**
 * @brief 快速点击触发点赞动画
 */
+ (void)showPraiseAnimationWithTouch:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
@end
