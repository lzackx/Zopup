#
# Be sure to run `pod lib lint Zopup.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Zopup'
  s.version          = '1.0.0'
  s.summary          = 'A FIFO queue popup tool'
  s.description      = <<-DESC
A FIFO queue popup tool
                       DESC
  s.homepage         = 'https://github.com/lzackx/Zopup'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lzackx' => 'lzackx@lzackx.com' }
  s.source           = { :git => 'https://github.com/lzackx/Zopup.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '10.0'
  s.source_files = 'Zopup/Classes/**/*.{h,m}'
  s.dependency 'pop'
end
