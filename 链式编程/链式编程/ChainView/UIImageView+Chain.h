//
//  UIImageView+Chain.h
//  链式编程
//
//  Created by 訾玉洁 on 2019/6/26.
//  Copyright © 2019 ZYJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChainViewMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (Chain)

- (void)chain_makeImage:(void(^)(ChainViewMaker *maker))block;

@end

NS_ASSUME_NONNULL_END
