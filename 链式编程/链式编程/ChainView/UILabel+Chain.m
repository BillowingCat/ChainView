//
//  UILabel+Chain.m
//  链式编程
//
//  Created by 訾玉洁 on 2019/6/26.
//  Copyright © 2019 ZYJ. All rights reserved.
//

#import "UILabel+Chain.h"

@implementation UILabel (Chain)

- (void)chain_makeLabel:(void(^)(ChainViewMaker *maker))block
{
    ChainViewMaker *maker = [[ChainViewMaker alloc] initWithChainViewType:Label withChainView:self];
    block(maker);
}

@end
