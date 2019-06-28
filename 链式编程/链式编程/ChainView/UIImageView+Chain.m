//
//  UIImageView+Chain.m
//  链式编程
//
//  Created by 訾玉洁 on 2019/6/26.
//  Copyright © 2019 ZYJ. All rights reserved.
//

#import "UIImageView+Chain.h"

@implementation UIImageView (Chain)

- (void)chain_makeImage:(void(^)(ChainViewMaker *maker))block
{
    ChainViewMaker *maker = [[ChainViewMaker alloc] initWithChainViewType:Image withChainView:self];
    block(maker);
}

@end
