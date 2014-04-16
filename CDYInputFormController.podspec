Pod::Spec.new do |spec|
  spec.name         = 'CDYInputFormController'
  spec.version      = '0.1.0'
  spec.summary      = "Utility classes to coordinate ad banners from different services."
  spec.homepage     = "https://github.com/coodly/CDYInputFormController"
  spec.author       = { "Jaanus Siim" => "jaanus@coodly.com" }
  spec.source       = { :git => "https://github.com/coodly/CDYInputFormController", :tag => "v#{spec.version}" }
  spec.license      = { :type => 'Apache 2', :file => 'LICENSE' }
  spec.requires_arc = true

  spec.subspec 'Core' do |ss|
    ss.platform = :ios, '7.0'
    ss.source_files = 'Core/*.{h,m}'
  end
end
