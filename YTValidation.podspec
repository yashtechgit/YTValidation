#
# Be sure to run `pod lib lint YTValidation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YTValidation'
  s.version          = '0.1.1'
  s.summary          = 'This is the utility library.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is the utility library for the validations 
                       DESC

  s.homepage         = 'https://github.com/yashtechgit/YTValidation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yashtechgit' => 'yashtechnologies1@gmail.com' }
  s.source           = { :git => 'https://github.com/yashtechgit/YTValidation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'YTValidation/Classes/**/*'
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
end
