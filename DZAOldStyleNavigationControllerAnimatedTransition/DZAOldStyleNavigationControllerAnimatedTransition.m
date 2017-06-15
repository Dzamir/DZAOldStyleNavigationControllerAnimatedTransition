//
//  DZAOldStyleNavigationControllerAnimatedTransition.m
//  
//
//  Created by Davide Di Stefano on 16/09/13.
//  Copyright (c) 2013 Davide Di Stefano. All rights reserved.
//

#import "DZAOldStyleNavigationControllerAnimatedTransition.h"

@implementation DZAOldStyleNavigationControllerAnimatedTransition

- (id)init
{
    self = [super init];
    if (self)
    {
        _operation = UINavigationControllerOperationPush;
    }
    return self;
}

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext;
{
    return 0.35;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext;
{
    UIViewController * fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController * toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView * containerView = [transitionContext containerView];
    CGRect screenFrame = containerView.frame;
    [containerView addSubview:toViewController.view];
    
    [toViewController beginAppearanceTransition:YES animated:YES];
    
    if (_operation == UINavigationControllerOperationPush)
    {
        toViewController.view.frame = CGRectMake(screenFrame.size.width, fromViewController.view.frame.origin.y, screenFrame.size.width, fromViewController.view.frame.size.height);
            
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^
        {
            fromViewController.view.frame = CGRectMake(-screenFrame.size.width, fromViewController.view.frame.origin.y, fromViewController.view.frame.size.width, fromViewController.view.frame.size.height);
            toViewController.view.frame = CGRectMake(screenFrame.origin.x, fromViewController.view.frame.origin.y, screenFrame.size.width, fromViewController.view.frame.size.height);
        } completion:^(BOOL finished) {
            [toViewController endAppearanceTransition];
            [transitionContext completeTransition:YES];
        }];
    } else
    {
        toViewController.view.frame = CGRectMake(-screenFrame.size.width, fromViewController.view.frame.origin.y, screenFrame.size.width, fromViewController.view.frame.size.height);
    
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^
        {
            fromViewController.view.frame = CGRectMake(screenFrame.size.width, fromViewController.view.frame.origin.y, fromViewController.view.frame.size.width, fromViewController.view.frame.size.height);
            toViewController.view.frame = CGRectMake(screenFrame.origin.x, fromViewController.view.frame.origin.y, screenFrame.size.width, fromViewController.view.frame.size.height);
        } completion:^(BOOL finished) {
            [toViewController endAppearanceTransition];
            [transitionContext completeTransition:YES];
        }];
    }
}

@end
