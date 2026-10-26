# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_hardinesszone"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "USDA Hardiness Zone API - Ruby Client"
  spec.description   = "USDA Hardiness Zone looks up the plant hardiness zone by ZIP code, mapping any US ZIP code to its zone title and temperature range. Paid plans add the zone classification code, Celsius values, and plant survival recommendations."
  spec.homepage      = "https://apiverve.com/marketplace/hardinesszone?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/hardinesszone-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/hardinesszone"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
