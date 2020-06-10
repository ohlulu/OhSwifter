#
#  Be sure to run `pod spec lint OhSwiftr.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name             = 'OhSwifter'
  s.version          = '5.0.2'
  s.summary          = 'A convenicence swift library.'
  s.homepage         = 'https://github.com/z30262226/OhSwifter'
  s.description      = <<-DESC
  
  A fluent style for UIKit initialize. 
  
  It dependency SwiftMinions, because I'm one of authors :)

  DESC

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ohlulu' => 'z30262226@gmail.com' }

  s.source           = { :git => 'https://github.com/z30262226/OhSwifter.git', :tag => spec.version}

  s.cocoapods_version     = '>= 1.4.0'
  s.ios.deployment_target = '10.0'
  s.swift_version    = '5.1'

  s.requires_arc     = true
  s.default_subspec  = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files  = 'Sources/*.swift', 'Sources/**/*.swift'
    ss.dependency "SwiftMinions", "~> 5.0"
  end

end
