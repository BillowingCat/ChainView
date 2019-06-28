//
//  UIButton+Chain.m
//  链式编程
//
//  Created by 訾玉洁 on 2019/6/26.
//  Copyright © 2019 ZYJ. All rights reserved.
//

#import "UIButton+Chain.h"

@implementation UIButton (Chain)

- (void)chain_makeButton:(void(^)(ChainViewMaker *maker))block
{
    ChainViewMaker *maker = [[ChainViewMaker alloc] initWithChainViewType:Button withChainView:self];
    block(maker);
}

@end
