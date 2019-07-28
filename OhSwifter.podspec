#
#  Be sure to run `pod spec lint OhSwiftr.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = 'OhSwifter'
  spec.version      = '0.0.2'
  spec.summary      = 'A convenicence swift library.'
  spec.homepage     = 'https://github.com/z30262226/OhSwifter'

  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'ohlulu' => 'z30262226@gmail.com' }

  spec.source       = { :git => 'https://github.com/z30262226/OhSwifter.git', :tag => '0.0.2' }
  spec.ios.deployment_target = '11.0'
  spec.swift_version = '5.1'

  spec.source_files = 'OhSwifter/OhSwifter/**/*'
  spec.exclude_files = 'OhSwifter/**/*.plist'

end
