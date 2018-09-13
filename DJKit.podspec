Pod::Spec.new do |s|
  s.name         = 'DJKit'
  s.summary      = 'A collection of iOS components. swift.'
  s.version      = '0.0.1'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'qiushuitian' => 'qiushuitian1111@126.com' }
  s.social_media_url = 'http://qiushuitian.com'
  s.homepage     = 'https://github.com/qiushuitian/DJKit'
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source       = { :git => 'https://github.com/qiushuitian/DJKit.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'YYKit/**/*.swift'
  s.public_header_files = 'YYKit/**/*.{h}'



#  s.libraries = 'z', 'sqlite3'
  s.frameworks = 'UIKit', 'Foundation'
#  s.ios.vendored_frameworks = 'Vendor/WebP.framework'

end
