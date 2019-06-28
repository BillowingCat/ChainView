//
//  ChainViewMaker.m
//  链式编程
//
//  Created by 訾玉洁 on 2019/6/26.
//  Copyright © 2019 ZYJ. All rights reserved.
//

#import "ChainViewMaker.h"

@interface ChainViewMaker()

@property(nonatomic,assign) ChainViewType chainViewType;
@property(nonatomic,weak) UIView *chainView;
@property(nonatomic,weak) UIButton *chainBtn;
@property(nonatomic,weak) UILabel *chainLabel;
@property(nonatomic,weak) UIImageView *chainImgView;

@end

@implementation ChainViewMaker

- (instancetype)initWithChainViewType:(ChainViewType)chainViewType withChainView:(UIView *)chainView
{
    if (self = [super init]) {
        
        self.chainViewType = chainViewType;
        switch (chainViewType) {
            case View:
                self.chainView = chainView;
                break;
            case Button:
                self.chainBtn = (UIButton *)chainView;
                break;
            case Label:
                self.chainLabel = (UILabel *)chainView;
                break;
            case Image:
                self.chainImgView = (UIImageView *)chainView;
                break;
            default:
                break;
        }
    }
    return self;
}

/** 背景色 */
-(ChainViewMaker *(^)(CGRect))frame
{
    return ^(CGRect frame){
        
        switch (self.chainViewType) {
            case View:
                self.chainView.frame = frame;
                break;
            case Button:
                self.chainBtn.frame = frame;
                break;
            case Label:
                self.chainLabel.frame = frame;
                break;
            case Image:
                self.chainImgView.frame = frame;
                break;
            default:
                break;
        }
        
        return self;
    };
}

/** 背景颜色 */
-(ChainViewMaker *(^)(UIColor *))backgroudColor
{
    return ^(UIColor *color){
        
        switch (self.chainViewType) {
            case View:
                self.chainView.backgroundColor = color;
                break;
            case Button:
                self.chainBtn.backgroundColor = color;
                break;
            case Label:
                self.chainLabel.backgroundColor = color;
                break;
            case Image:
                self.chainImgView.backgroundColor = color;
                break;
            default:
                break;
        }
        
        return self;
    };
}

/** 设置字体大小 */
-(ChainViewMaker *(^)(CGFloat))font
{
    return ^(CGFloat fontNum){
        
        switch (self.chainViewType) {
            case Button:
                self.chainBtn.titleLabel.font = [UIFont systemFontOfSize:fontNum];
                break;
            case Label:
                self.chainLabel.font = [UIFont systemFontOfSize:fontNum];
                break;
            default:
                break;
        }
        return self;
    };
}

/** 设置字体颜色 */
-(ChainViewMaker *(^)(UIColor *))textColor
{
    return ^(UIColor *color){
        
        switch (self.chainViewType) {
            case Button:
                [self.chainBtn setTitleColor:color forState:UIControlStateNormal];
                break;
            case Label:
                self.chainLabel.textColor = color;
                break;
            default:
                break;
        }
        
        return self;
    };
}

/** 设置文字 */
-(ChainViewMaker *(^)(NSString *))title
{
    return ^(NSString *title){
        
        switch (self.chainViewType) {
            case Button:
                [self.chainBtn setTitle:title forState:UIControlStateNormal];
                break;
            case Label:
                self.chainLabel.text = title;
                break;
            default:
                break;
        }
        
        return self;
    };
}

/** 设置点击事件 */
-(ChainViewMaker *(^)(id,SEL))addTarget
{
    return ^(id target,SEL action){
        
        switch (self.chainViewType) {
            case Button:
                [self.chainBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
                break;
            default:
                break;
        }
        
        return self;
    };
}

@end
