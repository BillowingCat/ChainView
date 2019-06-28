//
//  UIView+Chain.m
//  链式编程
//
//  Created by 訾玉洁 on 2019/6/26.
//  Copyright © 2019 ZYJ. All rights reserved.
//

#import "UIView+Chain.h"

@implementation UIView (Chain)

- (void)chain_makeView:(void(^)(ChainViewMaker *maker))block
{
    ChainViewMaker *maker = [[ChainViewMaker alloc] initWithChainViewType:View withChainView:self];
    block(maker);
}

@end
