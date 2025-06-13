# frozen_string_literal: true

require_relative "lib/address_base_registory_geocoder/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby-address_base_registory_geocoder"
  spec.version       = AddressBaseRegistoryGeocoder::VERSION
  spec.authors       = ["nc163"]
  spec.email         = ["kou1992@gmail.com"]

  spec.summary       = "AddressBaseRegistoryGeocoder API client"
  spec.description   = ""
  spec.homepage      = "https://github.com/nc163"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nc163"
  spec.metadata["changelog_uri"] = "https://github.com/nc163"

  spec.files = Dir[
    "lib/**/*.rb",
    "README.md",
    "CHANGELOG.md"
  ]
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1"
  spec.add_development_dependency "rspec", "~> 3.0"
  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
