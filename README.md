DDSOldStyleNavigationControllerAnimatedTransition
=================================================

This class implements the UIViewControllerAnimatedTransitioning protocol and it lets you use the old style push and pop animation (before iOS7) in which the two views scrolls together. Useful for UINavigationController with a transparent background in which the views overlaps with the iOS7 animation style.

How to use:

Set your viewcontroller as UINavigationController delegate:

    self.navigationController.delegate = self;

And Implement this method:

    
    -(id<UIViewControllerAnimatedTransitioning>)navigationController:
    (UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC
    {
        DDSOldStyleNavigationControllerAnimatedTransition * animation = [[DDSOldStyleNavigationControllerAnimatedTransition alloc] init];
        animation.operation = operation;
        return animation;
    }
