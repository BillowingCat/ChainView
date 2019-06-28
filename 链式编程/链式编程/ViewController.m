//
//  ViewController.m
//  链式编程
//
//  Created by 訾玉洁 on 2019/3/4.
//  Copyright © 2019年 ZYJ. All rights reserved.
//

/*
 1.什么是链式（函数式）编程？
 通过高阶函数以点为连接将多个函数连接在一起完成参数传递和复杂的操作！
 使用链式编程最多的三方库Masonry：例如
 make.right.equalTo(self.right).insets(kPadding);
 分析不难得出
 1、一个实例方法后面可以接括号拼接参数，那么可以判断当前实例方法返回值应该是一个block！（block 是一种特殊的函数）
 2、make.right.equalTo(self.right) 后面可以接着调用实例方法，可以分析出这个表达式返回值应该是一个该类的实例，也就是说 block的返回值是该类的实例变量
 */

#import "ViewController.h"
#import "ChainViewManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] init];
    [btn chain_makeButton:^(ChainViewMaker * _Nonnull maker) {
        maker.backgroudColor([UIColor yellowColor]);
        maker.frame(CGRectMake(100, 100, 100, 100));
        maker.font(12).title(@"哈哈哈").textColor([UIColor redColor]);
        maker.addTarget(self,@selector(onBtnClick));
    }];
    [self.view addSubview:btn];
}

- (void)onBtnClick
{
    NSLog(@"点击了按钮");
}

@end
