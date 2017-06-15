
Pod::Spec.new do |s|
  s.name             = "DZAOldStyleNavigationControllerAnimatedTransition"
  s.version          = "1.0.0"
  s.summary          = "Old style push and pop animation in which the two views scrolls together"
  s.description      = <<-DESC
                       This class implements the UIViewControllerAnimatedTransitioning protocol and it lets you use the old style push and pop animation (before iOS7) in which the two views scrolls together. Useful for UINavigationController with a transparent background in which the views overlaps with the iOS7 animation style.
                       DESC
  s.homepage         = "https://github.com/Dzamir/DZAOldStyleNavigationControllerAnimatedTransition"
  s.license          = 'MIT'
  s.author           = { "Davide Di Stefano" => "dzamirro@gmail.com" }
  s.source           = { :git => "https://github.com/Dzamir/DZAOldStyleNavigationControllerAnimatedTransition.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/dzamir'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'DZAOldStyleNavigationControllerAnimatedTransition/**/*'
end