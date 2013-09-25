//
//  SXTNavigationControllerAnimatedTransition.h
//  
//
//  Created by Davide Di Stefano on 16/09/13.
//  Copyright (c) 2013 ReturnService. All rights reserved.
//

#import <Foundation/Foundation.h>

/*

This class implements the UIViewControllerAnimatedTransitioning protocol and it lets you use the old style push and pop animation (before iOS7) in which the two views scrolls together. Useful for UINavigationController with a transparent background in which the views overlaps with the iOS7 animation style.

How to use:

Set your viewcontroller as UINavigationController delegate:

    self.navigationController.delegate = self;

And Implement this method:

	-(id<UIViewControllerAnimatedTransitioning>)navigationController:
	(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC
	{
	    OldStyleNavigationControllerAnimatedTransition * animation = [[OldStyleNavigationControllerAnimatedTransition alloc] init];
	    animation.operation = operation;
	    return animation;
	}
*/
@interface OldStyleNavigationControllerAnimatedTransition : NSObject <UIViewControllerAnimatedTransitioning>

// push or pop
@property (nonatomic, assign) UINavigationControllerOperation operation;

@end
