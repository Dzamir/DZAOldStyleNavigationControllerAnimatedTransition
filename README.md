DZAOldStyleNavigationControllerAnimatedTransition
==============================================

This class implements the UIViewControllerAnimatedTransitioning protocol and it lets you use the old style push and pop animation (before iOS7) in which the two views scrolls together. Useful for UINavigationController with a transparent background in which the views overlaps with the iOS7 animation style.

How to use:

Import the library:

    @import DZAOldStyleNavigationControllerAnimatedTransition;

Set your viewcontroller as UINavigationController delegate:

**ObjC:**

    self.navigationController.delegate = self;
   
**Swift:**

    self.navigationController?.delegate = self
    
And Implement this method:

**ObjC:**

    -(id<UIViewControllerAnimatedTransitioning>)navigationController:
    (UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC
    {
        DZAOldStyleNavigationControllerAnimatedTransition * animation = [[OldStyleNavigationControllerAnimatedTransition alloc] init];
        animation.operation = operation;
        return animation;
    }

**Swift:**

    override func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
	{
		let animation = DZAOldStyleNavigationControllerAnimatedTransition()
		animation.operation = operation
		return animation
	}
