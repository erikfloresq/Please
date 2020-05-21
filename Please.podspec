Pod::Spec.new do |s|
  s.name             = 'Please'
  s.version          = '0.0.6'
  s.summary          = 'Please, is my utils libs for my iOS projects.'
  s.description      = <<-DESC
Please, is my utils libs for my iOS projects, it has differents utils for Autolayout, Networking, etc.
                       DESC

  s.homepage         = 'https://github.com/erikfloresq/Please'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'erikfloresq' => 'erikfloresq@gmail.com' }
  s.source           = { :git => 'https://github.com/erikfloresq/Please.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/erikfloresq'

  s.ios.deployment_target = '11.0'
  s.swift_versions = ['5.1']
  s.source_files = 'Sources/**/*.swift'
end
