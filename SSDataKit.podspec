Pod::Spec.new do |s|
  s.name         = 'SSDataKit'
  s.version      = '0.1.0f'
  s.summary      = 'Eliminate your Core Data boilerplate code.'
  s.homepage     = 'https://github.com/soffes/ssdatakit'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Sam Soffes' => 'sam@soff.es' }
  s.source       = { :git => 'https://github.com/garthex/ssdatakit.git', :commit => 'ed91b2f8c395a11028e8283ed1f85d7850f80964' }
  s.platform     = :ios
  s.source_files = 'SSDataKit/*.{h,m}'
  s.framework  = 'CoreData'
  s.requires_arc = true
end
