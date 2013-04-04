Pod::Spec.new do |s|
  s.name         = 'SSDataKit'
  s.version      = '0.1.0d'
  s.summary      = 'Eliminate your Core Data boilerplate code.'
  s.homepage     = 'https://github.com/soffes/ssdatakit'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Sam Soffes' => 'sam@soff.es' }
  s.source       = { :git => 'https://github.com/garthex/ssdatakit.git', :commit => 'b7f118c4c474a4cd0868427ddd2be1dd2b4d06f9' }
  s.platform     = :ios
  s.source_files = 'SSDataKit/*.{h,m}'
  s.framework  = 'CoreData'
  s.requires_arc = true
end
