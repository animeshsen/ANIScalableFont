

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.name         = "ANIScalableFont"
  s.version      = "1.0"
  s.summary      = "Scale font size based on screen size of iOS device"
  s.description  = "Scale font size based on screen size of iOS device"
  # s.homepage     = ""


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # s.license      = { :type => 'MIT', :file => 'LICENSE' }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.author             = { "Animesh Sen" => "animes.sen@gmail.com" }


  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.source_files = "ANIScalableFont/**/*.{swift}"
  s.resources = "ANIScalableFont/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
  # s.ios.vendored_frameworks = "ANIScalableFont.framework"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.source       = { :git => "https://github.com/animeshsen/ANIScalableFont.git", :tag => "#{s.version}" }


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  # s.requires_arc = true

end
