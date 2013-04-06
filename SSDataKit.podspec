Pod::Spec.new do |s|
  s.name         = 'SSDataKit'
  s.version      = '0.1.0e'
  s.summary      = 'Eliminate your Core Data boilerplate code.'
  s.homepage     = 'https://github.com/soffes/ssdatakit'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Sam Soffes' => 'sam@soff.es' }
  s.source       = { :git => 'https://github.com/garthex/ssdatakit.git', :commit => '49fe474992d3c8d8ed17584a2239e7c3ebe60d12' }
  s.platform     = :ios
  s.source_files = 'SSDataKit/*.{h,m}'
  s.framework  = 'CoreData'
  s.requires_arc = true
end
