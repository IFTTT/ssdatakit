Pod::Spec.new do |s|
  s.name         = 'SSDataKit'
  s.version      = '0.1.4'
  s.summary      = 'Eliminate your Core Data boilerplate code.'
  s.homepage     = 'https://github.com/soffes/ssdatakit'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Sam Soffes' => 'sam@soff.es' }
  s.source       = { :git => 'https://github.com/garthex/ssdatakit.git', :commit => '9d85cf34dedb03dbd146427a0e95c9cc0683aa22' }
  s.source_files = 'SSDataKit/*.{h,m}'
  s.framework  = 'CoreData'
  s.requires_arc = true
end
