#
# Be sure to run `pod lib lint TStyle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TStyle'
  s.version          = '1.0.1'
  s.summary          = 'TStyle is a simple and flexible UI component fully written in Swift.'
  s.description      = 'TStyle is a simple and flexible UI component fully written in Swift. TStyle is developed to help users quickly define attributes detail without having to define from scratch'
  s.homepage         = 'https://github.com/fanta1ty/TStyle'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fanta1ty' => 'thinhnguyen12389@gmail.com' }
  s.source           = { :git => 'https://github.com/fanta1ty/TStyle.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'TStyle/Classes/**/*'
  s.swift_version = '5.0'
end
