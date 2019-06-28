//
//  ChainViewMaker.h
//  链式编程
//
//  Created by 訾玉洁 on 2019/6/26.
//  Copyright © 2019 ZYJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    View,
    Button,
    Label,
    Image
} ChainViewType;

NS_ASSUME_NONNULL_BEGIN

@interface ChainViewMaker : NSObject

- (instancetype)initWithChainViewType:(ChainViewType)chainViewType withChainView:(UIView *)chainView;

/** 背景色 */
-(ChainViewMaker *(^)(CGRect))frame;
/** 背景颜色 */
-(ChainViewMaker *(^)(UIColor *))backgroudColor;
/** 设置字体大小 */
-(ChainViewMaker *(^)(CGFloat))font;
/** 设置字体颜色 */
-(ChainViewMaker *(^)(UIColor *))textColor;
/** 设置文字 */
-(ChainViewMaker *(^)(NSString *))title;
/** 设置点击事件 */
-(ChainViewMaker *(^)(id,SEL))addTarget;

@end

NS_ASSUME_NONNULL_END
