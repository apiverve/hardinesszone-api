Pod::Spec.new do |s|
  s.name             = 'APIVerveUSDAHardinessZone'
  s.version          = '1.2.3'
  s.summary          = 'USDA Hardiness Zone looks up the plant hardiness zone by ZIP code, mapping any US ZIP code to its zone title and temperature range.'
  s.description      = <<-'DESC'
USDA Hardiness Zone looks up the plant hardiness zone by ZIP code, mapping any US ZIP code to its zone title and temperature range. Paid plans add the zone classification code, Celsius values, and plant survival recommendations.

This iOS/macOS SDK provides a convenient way to access the USDA Hardiness Zone from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/hardinesszone?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/hardinesszone-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveUSDAHardinessZone/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
