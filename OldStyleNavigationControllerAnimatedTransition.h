//
//  SXTNavigationControllerAnimatedTransition.h
//  Sixti
//
//  Created by Davide Di Stefano on 16/09/13.
//  Copyright (c) 2013 ReturnService. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OldStyleNavigationControllerAnimatedTransition : NSObject <UIViewControllerAnimatedTransitioning>

// push or pop
@property (nonatomic, assign) UINavigationControllerOperation operation;

@end
